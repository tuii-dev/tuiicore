import 'package:flutter/foundation.dart';

enum LessonWorkflowJobType {
  workflowStarted,
  workflowCompleted,
  unknown,
}

extension LessonWorkflowJobTypeExtension on LessonWorkflowJobType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case LessonWorkflowJobType.workflowStarted:
        return 'workflowStarted';
      case LessonWorkflowJobType.workflowCompleted:
        return 'workflowCompleted';
      default:
        return 'unknown';
    }
  }

  LessonWorkflowJobType fromMap(String? type) {
    switch (type) {
      case 'workflowStarted':
        return LessonWorkflowJobType.workflowStarted;
      case 'workflowCompleted':
        return LessonWorkflowJobType.workflowCompleted;
      default:
        return LessonWorkflowJobType.unknown;
    }
  }
}