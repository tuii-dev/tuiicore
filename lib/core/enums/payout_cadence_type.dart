import 'package:flutter/foundation.dart';

enum PayoutCadenceType {
  daily,
  weeklyMonday,
  weeklyTuesday,
  weeklyWednesday,
  weeklyThursday,
  weeklyFriday,
  biweeklyMonday,
  biweeklyTuesday,
  biweeklyWednesday,
  biweeklyThursday,
  biweeklyFriday,
  monthylyFirst,
  monthlyFifteenth,
  unknown,
}

extension PayoutCadenceTypeExtension on PayoutCadenceType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case PayoutCadenceType.weeklyMonday:
        return 'weeklyMonday';
      case PayoutCadenceType.weeklyTuesday:
        return 'weeklyTuesday';
      case PayoutCadenceType.weeklyWednesday:
        return 'weeklyWednesday';
      case PayoutCadenceType.weeklyThursday:
        return 'weeklyThursday';
      case PayoutCadenceType.weeklyFriday:
        return 'weeklyFriday';
      case PayoutCadenceType.biweeklyMonday:
        return 'biweeklyMonday';
      case PayoutCadenceType.biweeklyTuesday:
        return 'biweeklyTuesday';
      case PayoutCadenceType.biweeklyWednesday:
        return 'biweeklyWednesday';
      case PayoutCadenceType.biweeklyThursday:
        return 'biweeklyThursday';
      case PayoutCadenceType.biweeklyFriday:
        return 'biweeklyFriday';
      case PayoutCadenceType.monthylyFirst:
        return 'monthylyFirst';
      case PayoutCadenceType.monthlyFifteenth:
        return 'monthlyFifteenth';
      default:
        return 'daily';
    }
  }

  PayoutCadenceType fromMap(String? type) {
    switch (type) {
      case 'weeklyMonday':
        return PayoutCadenceType.weeklyMonday;
      case 'weeklyTuesday':
        return PayoutCadenceType.weeklyTuesday;
      case 'weeklyWednesday':
        return PayoutCadenceType.weeklyWednesday;
      case 'weeklyThursday':
        return PayoutCadenceType.weeklyThursday;
      case 'weeklyFriday':
        return PayoutCadenceType.weeklyFriday;
      case 'biweeklyMonday':
        return PayoutCadenceType.biweeklyMonday;
      case 'biweeklyTuesday':
        return PayoutCadenceType.biweeklyTuesday;
      case 'biweeklyWednesday':
        return PayoutCadenceType.biweeklyWednesday;
      case 'biweeklyThursday':
        return PayoutCadenceType.biweeklyThursday;
      case 'biweeklyFriday':
        return PayoutCadenceType.biweeklyFriday;
      case 'monthylyFirst':
        return PayoutCadenceType.monthylyFirst;
      case 'monthlyFifteenth':
        return PayoutCadenceType.monthlyFifteenth;
      default:
        return PayoutCadenceType.daily;
    }
  }
}