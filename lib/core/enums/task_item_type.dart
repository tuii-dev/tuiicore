import 'package:flutter/foundation.dart';

enum TaskItemType { task, quiz, unknown }

extension TaskItemTypeExtension on TaskItemType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case TaskItemType.task:
        return 'Task';
      case TaskItemType.quiz:
        return 'Quiz';
      default:
        return 'Task';
    }
  }

  String toMap() {
    switch (this) {
      case TaskItemType.task:
        return 'task';
      case TaskItemType.quiz:
        return 'quiz';
      default:
        return 'task';
    }
  }

  TaskItemType fromMap(String? type) {
    switch (type) {
      case 'task':
        return TaskItemType.task;
      case 'quiz':
        return TaskItemType.quiz;
      default:
        return TaskItemType.task;
    }
  }

  TaskItemType fromDisplay(String display) {
    switch (display) {
      case 'Task':
        return TaskItemType.task;
      case 'Quiz':
        return TaskItemType.quiz;
      default:
        return TaskItemType.task;
    }
  }
}