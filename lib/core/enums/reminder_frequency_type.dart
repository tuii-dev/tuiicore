import 'package:flutter/foundation.dart';

enum ReminderFrequencyType { daily, weekly, monthly, unknown }

extension ReminderFrequencyTypeExtension on ReminderFrequencyType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case ReminderFrequencyType.daily:
        return 'Daily';
      case ReminderFrequencyType.weekly:
        return 'Weekly';
      case ReminderFrequencyType.monthly:
        return 'Monthly';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case ReminderFrequencyType.daily:
        return 'daily';
      case ReminderFrequencyType.weekly:
        return 'weekly';
      case ReminderFrequencyType.monthly:
        return 'monthly';
      default:
        return 'unknown';
    }
  }

  ReminderFrequencyType fromMap(String? type) {
    switch (type) {
      case 'daily':
        return ReminderFrequencyType.daily;
      case 'weekly':
        return ReminderFrequencyType.weekly;
      case 'monthly':
        return ReminderFrequencyType.monthly;
      default:
        return ReminderFrequencyType.unknown;
    }
  }

  ReminderFrequencyType fromDisplay(String display) {
    switch (display) {
      case 'Daily':
        return ReminderFrequencyType.daily;
      case 'Weekly':
        return ReminderFrequencyType.weekly;
      case 'Monthly':
        return ReminderFrequencyType.monthly;
      default:
        return ReminderFrequencyType.unknown;
    }
  }
}