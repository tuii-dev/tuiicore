import 'dart:io';
import 'dart:typed_data';

import 'package:tuiicore/core/common/task_progress_update_manager.dart';

abstract class StorageRepository {
  Future<String> uploadProfileImage({
    required String tutorId,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  });

  Future<String> uploadImageResource({
    required String tutorId,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  });

  Future<String> uploadPdfResource(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager});

  Future<String> uploadStudioPolicy(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager});

  Future<String> uploadMp3Resource(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager});

  Future<String> uploadDisputeImageAttachment({
    required String disputeNumber,
    required String fileName,
    required Uint8List fileBytes,
    TaskProgressUpdateManager? taskManager,
  });

  Future<String> uploadDisputePdfAttachment(
      {required String disputeNumber,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager});

  Future<String> uploadThumbnail(
      {required String tutorId,
      required String fileName,
      required Uint8List fileBytes,
      TaskProgressUpdateManager? taskManager});

  String getFileExtension({required File file});

  String getFileExtensionFromName({required String name});
}
