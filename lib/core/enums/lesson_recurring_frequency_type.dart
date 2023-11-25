import 'package:flutter/foundation.dart';

enum LessonRecurringFrequencyType {
  daily,
  weekly,
  fortNightly,
  monthly,
  unknown
}

extension LessonRecurringFrequencyTypeExtension
    on LessonRecurringFrequencyType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case LessonRecurringFrequencyType.daily:
        return 'Daily';
      case LessonRecurringFrequencyType.weekly:
        return 'Weekly';
      case LessonRecurringFrequencyType.fortNightly:
        return 'Fortnightly';
      case LessonRecurringFrequencyType.monthly:
        return 'Monthly';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case LessonRecurringFrequencyType.daily:
        return 'daily';
      case LessonRecurringFrequencyType.weekly:
        return 'weekly';
      case LessonRecurringFrequencyType.fortNightly:
        return 'fortnightly';
      default:
        return 'monthly';
    }
  }

  LessonRecurringFrequencyType fromMap(String? type) {
    switch (type) {
      case 'daily':
        return LessonRecurringFrequencyType.daily;
      case 'weekly':
        return LessonRecurringFrequencyType.weekly;
      case 'fortnightly':
        return LessonRecurringFrequencyType.fortNightly;
      default:
        return LessonRecurringFrequencyType.monthly;
    }
  }
}