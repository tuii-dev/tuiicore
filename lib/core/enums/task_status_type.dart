import 'package:flutter/foundation.dart';

enum TaskStatusType { planned, active, completed, unknown }

extension TaskStatusTypeExtension on TaskStatusType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case TaskStatusType.planned:
        return 'Planned';
      case TaskStatusType.active:
        return 'Active';
      case TaskStatusType.completed:
        return 'Completed';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case TaskStatusType.planned:
        return 'planned';
      case TaskStatusType.active:
        return 'active';
      case TaskStatusType.completed:
        return 'completed';
      default:
        return 'unknown';
    }
  }

  TaskStatusType fromMap(String? type) {
    switch (type) {
      case 'planned':
        return TaskStatusType.planned;
      case 'active':
        return TaskStatusType.active;
      case 'completed':
        return TaskStatusType.completed;
      default:
        return TaskStatusType.unknown;
    }
  }

  TaskStatusType fromDisplay(String display) {
    switch (display) {
      case 'Planned':
        return TaskStatusType.planned;
      case 'Active':
        return TaskStatusType.active;
      case 'Completed':
        return TaskStatusType.completed;
      default:
        return TaskStatusType.unknown;
    }
  }
}