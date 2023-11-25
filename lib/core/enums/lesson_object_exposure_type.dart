import 'package:flutter/foundation.dart';

enum ClassroomObjectExposureType { classroom, lesson, task, unknown }

extension ClassroomObjectExposureTypeExtension on ClassroomObjectExposureType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case ClassroomObjectExposureType.classroom:
        return 'Classroom';
      case ClassroomObjectExposureType.lesson:
        return 'Lesson';
      case ClassroomObjectExposureType.task:
        return 'Task';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case ClassroomObjectExposureType.classroom:
        return 'classroom';
      case ClassroomObjectExposureType.lesson:
        return 'lesson';
      case ClassroomObjectExposureType.task:
        return 'task';
      default:
        return 'unknown';
    }
  }

  ClassroomObjectExposureType fromMap(String? type) {
    switch (type) {
      case 'classroom':
        return ClassroomObjectExposureType.classroom;
      case 'lesson':
        return ClassroomObjectExposureType.lesson;
      case 'task':
        return ClassroomObjectExposureType.task;
      default:
        return ClassroomObjectExposureType.unknown;
    }
  }

  ClassroomObjectExposureType fromDisplay(String display) {
    switch (display) {
      case 'Classroom':
        return ClassroomObjectExposureType.classroom;
      case 'Lesson':
        return ClassroomObjectExposureType.lesson;
      case 'Task':
        return ClassroomObjectExposureType.task;
      default:
        return ClassroomObjectExposureType.unknown;
    }
  }
}