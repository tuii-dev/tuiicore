import 'package:flutter/foundation.dart';

enum LessonWorkflowType {
  refundRequest,
  reschedule,
  unknown,
}

extension LessonWorkflowTypeExtension on LessonWorkflowType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case LessonWorkflowType.refundRequest:
        return 'refundRequest';
      case LessonWorkflowType.reschedule:
        return 'reschedule';
      default:
        return 'unknown';
    }
  }

  LessonWorkflowType fromMap(String? type) {
    switch (type) {
      case 'refundRequest':
        return LessonWorkflowType.refundRequest;
      case 'reschedule':
        return LessonWorkflowType.reschedule;
      default:
        return LessonWorkflowType.unknown;
    }
  }
}