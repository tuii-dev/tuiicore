import 'package:flutter/foundation.dart';

enum LessonDeliveryType { studio, virtual, homeVisit, unknown }

extension LessonDeliveryTypeExtension on LessonDeliveryType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case LessonDeliveryType.studio:
        return 'Studio';
      case LessonDeliveryType.virtual:
        return 'Virtual';
      case LessonDeliveryType.homeVisit:
        return 'Home Visit';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case LessonDeliveryType.studio:
        return 'studio';
      case LessonDeliveryType.virtual:
        return 'virtual';
      case LessonDeliveryType.homeVisit:
        return 'homeVisit';
      default:
        return 'unknown';
    }
  }

  LessonDeliveryType fromMap(String? type) {
    switch (type) {
      case 'studio':
        return LessonDeliveryType.studio;
      case 'virtual':
        return LessonDeliveryType.virtual;
      case 'homeVisit':
        return LessonDeliveryType.homeVisit;
      default:
        return LessonDeliveryType.unknown;
    }
  }

  LessonDeliveryType fromDisplay(String display) {
    switch (display) {
      case 'Studio':
        return LessonDeliveryType.studio;
      case 'Virtual':
        return LessonDeliveryType.virtual;
      case 'Home Visit':
        return LessonDeliveryType.homeVisit;
      default:
        return LessonDeliveryType.unknown;
    }
  }
}