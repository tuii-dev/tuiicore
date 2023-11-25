import 'package:flutter/foundation.dart';

enum ClassroomObjectType {
  lessons,
  tasks,
  resources,
  individualList,
  bookings,
  payouts,
  resourceLibrary,
  unknown
}

extension ClassroomObjectTypeExtension on ClassroomObjectType {
  String get name {
    return describeEnum(this);
  }

  String get path {
    switch (this) {
      case ClassroomObjectType.lessons:
        return 'lessons';
      case ClassroomObjectType.tasks:
        return 'tasks';
      case ClassroomObjectType.resources:
        return 'resources';
      case ClassroomObjectType.individualList:
        return 'individualList';
      case ClassroomObjectType.bookings:
        return 'bookings';
      case ClassroomObjectType.payouts:
        return 'payouts';
      case ClassroomObjectType.resourceLibrary:
        return 'resourceLibrary';
      default:
        return 'unknown';
    }
  }
}