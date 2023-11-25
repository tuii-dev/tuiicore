import 'package:flutter/foundation.dart';

enum DetailDialogType { task, resource }

extension DetailDialogTypeExtension on DetailDialogType {
  String get name {
    return describeEnum(this);
  }
}