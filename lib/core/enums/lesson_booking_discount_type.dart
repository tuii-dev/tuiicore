import 'package:flutter/foundation.dart';

enum LessonBookingDiscountType { noDiscount, percentage, fixedAmount }

extension LessonBookingDiscountTypeExtension on LessonBookingDiscountType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case LessonBookingDiscountType.noDiscount:
        return 'No Discount';
      case LessonBookingDiscountType.percentage:
        return 'Percentage';
      case LessonBookingDiscountType.fixedAmount:
        return 'Fixed Amount';
      default:
        return 'No Discount';
    }
  }

  String toMap() {
    switch (this) {
      case LessonBookingDiscountType.noDiscount:
        return 'noDiscount';
      case LessonBookingDiscountType.percentage:
        return 'percentage';
      case LessonBookingDiscountType.fixedAmount:
        return 'fixedAmount';
      default:
        return 'noDiscount';
    }
  }

  LessonBookingDiscountType fromMap(String? type) {
    switch (type) {
      case 'noDiscount':
        return LessonBookingDiscountType.noDiscount;
      case 'percentage':
        return LessonBookingDiscountType.percentage;
      case 'fixedAmount':
        return LessonBookingDiscountType.fixedAmount;
      default:
        return LessonBookingDiscountType.noDiscount;
    }
  }

  LessonBookingDiscountType fromDisplay(String display) {
    switch (display) {
      case 'No Discount':
        return LessonBookingDiscountType.noDiscount;
      case 'Percentage':
        return LessonBookingDiscountType.percentage;
      case 'Fixed Amount':
        return LessonBookingDiscountType.fixedAmount;
      default:
        return LessonBookingDiscountType.noDiscount;
    }
  }
}