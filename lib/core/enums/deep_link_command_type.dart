import 'package:flutter/foundation.dart';

enum DeepLinkCommandType { booking, connect, lesson, unknown }

extension DeepLinkCommandTypeExtension on DeepLinkCommandType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case DeepLinkCommandType.booking:
        return 'booking';
      case DeepLinkCommandType.connect:
        return 'connect';
      case DeepLinkCommandType.lesson:
        return 'lesson';
      default:
        return 'unknown';
    }
  }

  DeepLinkCommandType fromMap(String? type) {
    switch (type) {
      case 'booking':
        return DeepLinkCommandType.booking;
      case 'connect':
        return DeepLinkCommandType.connect;
      case 'lesson':
        return DeepLinkCommandType.lesson;
      default:
        return DeepLinkCommandType.unknown;
    }
  }
}