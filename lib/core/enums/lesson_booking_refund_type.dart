import 'package:flutter/foundation.dart';

enum LessonBookingRefundType {
  fullRefund,
  lessonRefund,
  additionalCostRefund,
  unknown
}

extension LessonBookingRefundTypeExtension on LessonBookingRefundType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case LessonBookingRefundType.fullRefund:
        return 'Full Refund';
      case LessonBookingRefundType.lessonRefund:
        return 'Lesson Refund';
      case LessonBookingRefundType.additionalCostRefund:
        return 'Additional Cost Refund';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case LessonBookingRefundType.fullRefund:
        return 'fullRefund';
      case LessonBookingRefundType.lessonRefund:
        return 'lessonRefund';
      case LessonBookingRefundType.additionalCostRefund:
        return 'additionalCostRefund';
      default:
        return 'unknown';
    }
  }

  LessonBookingRefundType fromMap(String? type) {
    switch (type) {
      case 'fullRefund':
        return LessonBookingRefundType.fullRefund;
      case 'lessonRefund':
        return LessonBookingRefundType.lessonRefund;
      case 'additionalCostRefund':
        return LessonBookingRefundType.additionalCostRefund;
      default:
        return LessonBookingRefundType.unknown;
    }
  }

  LessonBookingRefundType fromDisplay(String display) {
    switch (display) {
      case 'Full Refund':
        return LessonBookingRefundType.fullRefund;
      case 'Lesson Refund':
        return LessonBookingRefundType.lessonRefund;
      case 'Additional Cost Refund':
        return LessonBookingRefundType.additionalCostRefund;
      default:
        return LessonBookingRefundType.unknown;
    }
  }
}