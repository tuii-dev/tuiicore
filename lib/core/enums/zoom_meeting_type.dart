import 'package:flutter/foundation.dart';

enum ZoomMeetingType {
  undefined,
  instant,
  scheduled,
  recurringNoFixedTime,
  recurringFixedTime,
}

extension ZoomMeetingTypeExtension on ZoomMeetingType {
  String get name {
    return describeEnum(this);
  }

  int get zoomIntValue {
    switch (this) {
      case ZoomMeetingType.instant:
        return 1;
      case ZoomMeetingType.recurringNoFixedTime:
        return 3;
      case ZoomMeetingType.recurringFixedTime:
        return 8;
      default:
        return 2;
    }
  }

  ZoomMeetingType fromMap(int? zoomIntValue) {
    switch (zoomIntValue) {
      case 1:
        return ZoomMeetingType.instant;
      case 3:
        return ZoomMeetingType.recurringNoFixedTime;
      case 8:
        return ZoomMeetingType.recurringFixedTime;
      default:
        return ZoomMeetingType.scheduled;
    }
  }
}