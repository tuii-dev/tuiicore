import 'package:flutter/foundation.dart';

enum DiscountType { percentage, fixedAmount, none }

extension DiscountTypeExtension on DiscountType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case DiscountType.percentage:
        return 'Percentage';
      case DiscountType.fixedAmount:
        return 'Fixed Amount';
      default:
        return 'None';
    }
  }

  String toMap() {
    switch (this) {
      case DiscountType.percentage:
        return 'percentage';
      case DiscountType.fixedAmount:
        return 'fixedAmount';
      default:
        return 'none';
    }
  }

  DiscountType fromMap(String? type) {
    switch (type) {
      case 'percentage':
        return DiscountType.percentage;
      case 'fixedAmount':
        return DiscountType.fixedAmount;
      default:
        return DiscountType.none;
    }
  }

  DiscountType fromDisplay(String display) {
    switch (display) {
      case 'Percentage':
        return DiscountType.percentage;
      case 'Fixed Amount':
        return DiscountType.fixedAmount;
      default:
        return DiscountType.none;
    }
  }
}