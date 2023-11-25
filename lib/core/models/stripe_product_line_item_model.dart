import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/common/discount_description_model.dart';

class StripeProductLineItem extends Equatable {
  final String price;
  final int quantity;
  final DiscountDescriptionModel? discount;

  const StripeProductLineItem({
    required this.price,
    required this.quantity,
    this.discount,
  });

  StripeProductLineItem copyWith({
    String? price,
    int? quantity,
    DiscountDescriptionModel? discount,
  }) {
    return StripeProductLineItem(
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      discount: discount ?? this.discount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'quantity': quantity,
      'discount': discount?.toMap()
    };
  }

  factory StripeProductLineItem.fromMap(Map<String, dynamic> map) {
    return StripeProductLineItem(
      price: map['price'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      discount: map['discount'] != null
          ? DiscountDescriptionModel.fromMap(map['discount'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StripeProductLineItem.fromJson(String source) =>
      StripeProductLineItem.fromMap(json.decode(source));

  @override
  String toString() => 'StripeLineItem(price: $price, quantity: $quantity)';

  @override
  List<Object?> get props => [price, quantity, discount];
}