import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/discount_type.dart';

class DiscountDescriptionModel extends Equatable {
  final DiscountType? discountType;
  final double? percentage;
  final double? fixedAmount;

  const DiscountDescriptionModel({
    this.discountType,
    this.percentage,
    this.fixedAmount,
  });

  factory DiscountDescriptionModel.initial() {
    return const DiscountDescriptionModel(discountType: DiscountType.none);
  }

  DiscountDescriptionModel copyWith({
    DiscountType? discountType,
    double? percentage,
    double? fixedAmount,
  }) {
    return DiscountDescriptionModel(
      discountType: discountType ?? this.discountType,
      percentage: percentage ?? this.percentage,
      fixedAmount: fixedAmount ?? this.fixedAmount,
    );
  }

  DiscountDescriptionModel clone() {
    return DiscountDescriptionModel(
      discountType: discountType,
      percentage: percentage,
      fixedAmount: fixedAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'discountType': discountType?.toMap(),
      'percentage': percentage,
      'fixedAmount': fixedAmount,
    };
  }

  factory DiscountDescriptionModel.fromMap(Map<String, dynamic> map) {
    const staticType = DiscountType.none;
    return DiscountDescriptionModel(
      discountType: map['discountType'] != null
          ? staticType.fromMap(map['discountType'])
          : null,
      percentage: map['percentage']?.toDouble(),
      fixedAmount: map['fixedAmount']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DiscountDescriptionModel.fromJson(String source) =>
      DiscountDescriptionModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'DiscountDescriptionModel(discountType: $discountType, percentage: $percentage, fixedAmount: $fixedAmount)';

  @override
  List<Object?> get props => [discountType, percentage, fixedAmount];
}