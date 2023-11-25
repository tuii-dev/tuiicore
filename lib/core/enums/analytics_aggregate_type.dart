import 'package:flutter/foundation.dart';

enum AnalyticsAggregateType { yearly, quarterly, monthly, weekly, daily }

extension AnalyticsAggregateTypeExtension on AnalyticsAggregateType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case AnalyticsAggregateType.yearly:
        return 'Yearly';
      case AnalyticsAggregateType.quarterly:
        return 'Quarterly';
      case AnalyticsAggregateType.monthly:
        return 'Monthly';
      case AnalyticsAggregateType.weekly:
        return 'Weekly';
      default:
        return 'Daily';
    }
  }
}