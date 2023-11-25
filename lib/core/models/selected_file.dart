import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class SelectedFile extends Equatable {
  final Uint8List fileBytes;
  final String fileName;
  final String hash;
  final String? documentUrl;
  const SelectedFile({
    required this.fileBytes,
    required this.fileName,
    required this.hash,
    this.documentUrl,
  });

  @override
  List<Object?> get props => [fileBytes, fileName, hash, documentUrl];

  SelectedFile copyWith({
    Uint8List? fileBytes,
    String? fileName,
    String? hash,
    String? documentUrl,
  }) {
    return SelectedFile(
      fileBytes: fileBytes ?? this.fileBytes,
      fileName: fileName ?? this.fileName,
      hash: hash ?? this.hash,
      documentUrl: documentUrl ?? this.documentUrl,
    );
  }
}