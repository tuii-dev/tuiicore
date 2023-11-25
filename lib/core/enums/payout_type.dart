import 'package:flutter/foundation.dart';

enum PayoutType {
  lesson,
  additionalCost,
  refundAdjustment,
  disputeAdjustment,
  unknown
}

extension PayoutTypeExtension on PayoutType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case PayoutType.lesson:
        return 'lesson';
      case PayoutType.additionalCost:
        return 'additionalCost';
      case PayoutType.refundAdjustment:
        return 'refundAdjustment';
      case PayoutType.disputeAdjustment:
        return 'disputeAdjustment';
      default:
        return 'unknown';
    }
  }

  PayoutType fromMap(String? type) {
    switch (type) {
      case 'lesson':
        return PayoutType.lesson;
      case 'additionalCost':
        return PayoutType.additionalCost;
      case 'refundAdjustment':
        return PayoutType.refundAdjustment;
      case 'disputeAdjustment':
        return PayoutType.disputeAdjustment;
      default:
        return PayoutType.unknown;
    }
  }
}