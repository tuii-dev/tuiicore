import 'dart:io';
import 'dart:typed_data';
import 'package:tuiicore/core/common/task_progress_update_event.dart';
import 'package:tuiicore/core/common/task_progress_update_manager.dart';
import 'package:tuiicore/core/services/storage_repository.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart' as p;

import 'package:firebase_storage/firebase_storage.dart';

class StorageRepositoryImpl extends StorageRepository {
  final FirebaseStorage storage;

  StorageRepositoryImpl({required this.storage});

  @override
  Future<String> uploadProfileImage({
    required String tutorId,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  }) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'images/$tutorId/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading image...');

    return downloadUrl;
  }

  @override
  Future<String> uploadImageResource({
    required String tutorId,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  }) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'resources/$tutorId/images/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading image...');

    return downloadUrl;
  }

  @override
  Future<String> uploadPdfResource(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager}) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'resources/$tutorId/pdfs/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading pdf...');

    return downloadUrl;
  }

  @override
  Future<String> uploadStudioPolicy(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager}) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'policies/$tutorId/pdfs/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading studio policy...');

    return downloadUrl;
  }

  @override
  Future<String> uploadMp3Resource(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager}) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'resources/$tutorId/mp3s/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading mp3...');

    return downloadUrl;
  }

  @override
  Future<String> uploadDisputeImageAttachment({
    required String disputeNumber,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  }) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'disputes/$disputeNumber/images/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading image...');

    return downloadUrl;
  }

  @override
  Future<String> uploadDisputePdfAttachment(
      {required String disputeNumber,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager}) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'disputes/$disputeNumber/pdfs/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading pdf...');

    return downloadUrl;
  }

  @override
  Future<String> uploadThumbnail(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager}) async {
    var fileId = const Uuid().v4();
    final ext = getFileExtensionFromName(name: fileName);

    final downloadUrl = await _uploadFile(
        fileBytes: fileBytes,
        ref: 'resources/$tutorId/thumbnails/$fileId.$ext',
        taskManager: taskManager,
        taskStatus: 'Uploading thumbnail...');

    return downloadUrl;
  }

  @override
  void sanitizeThumbnailUrl(String? thumbnailUrl, String projectId) {
    if (thumbnailUrl != null &&
        thumbnailUrl.startsWith('https://storage.googleapis.com/')) {
      final start = thumbnailUrl.indexOf('/images/thumbnails/');
      final end = thumbnailUrl.indexOf('.png?');
      final rootPath = thumbnailUrl.substring(start, end + 4);
      // ignore: unused_local_variable
      final storagePath = 'gs://$projectId$rootPath';
    }
  }

  @override
  String getFileExtension({required File file}) {
    final name = p.basename(file.path);
    return getFileExtensionFromName(name: name);
  }

  @override
  String getFileExtensionFromName({required String name}) {
    final exploded = name.split('.');
    return exploded[exploded.length - 1];
  }

  Future<String> _uploadFile(
      {required Uint8List fileBytes,
      required String ref,
      TaskProgressUpdateManager? taskManager,
      String taskStatus = 'Uploading file...'}) async {
    UploadTask uploadTask = storage.ref(ref).putData(fileBytes);

    if (taskManager != null) {
      uploadTask.snapshotEvents.listen((event) {
        final progress =
            event.bytesTransferred.toDouble() / event.totalBytes.toDouble();
        taskManager.update(
            TaskProgressUpdateEvent(progress: progress, status: taskStatus));
      });
    }

    String downloadUrl = await uploadTask
        .then((taskSnapshot) async => await taskSnapshot.ref.getDownloadURL());
    return downloadUrl;
  }
}