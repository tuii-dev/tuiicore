import 'package:flutter/foundation.dart';

enum ReminderType { email, sms, notification, unknown }

extension ReminderTypeExtension on ReminderType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case ReminderType.email:
        return 'Email';
      case ReminderType.sms:
        return 'SMS';
      case ReminderType.notification:
        return 'Notification';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case ReminderType.email:
        return 'email';
      case ReminderType.sms:
        return 'sms';
      case ReminderType.notification:
        return 'notification';
      default:
        return 'unknown';
    }
  }

  ReminderType fromMap(String? type) {
    switch (type) {
      case 'email':
        return ReminderType.email;
      case 'sms':
        return ReminderType.sms;
      case 'notification':
        return ReminderType.notification;
      default:
        return ReminderType.unknown;
    }
  }

  ReminderType fromDisplay(String display) {
    switch (display) {
      case 'Email':
        return ReminderType.email;
      case 'SMS':
        return ReminderType.sms;
      case 'Notification':
        return ReminderType.notification;
      default:
        return ReminderType.unknown;
    }
  }
}