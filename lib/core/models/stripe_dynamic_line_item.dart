import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/common/discount_description_model.dart';
import 'package:uuid/uuid.dart';

class StripeDynamicLineItem extends Equatable {
  final String? id;
  final StripePriceData? priceData;
  final int? quantity;
  final List<String>? taxRates;
  final bool? isTaxExempt;
  final bool? isPendingRefund;
  final bool? isRefunded;
  final bool? isDisputed;
  final String? paidBookingId;
  final String? refundBookingId;
  final DiscountDescriptionModel? discount;

  // Payouts
  final bool? isPaidOut;
  final DateTime? payoutDate;

  final bool? isPendingPayOut;
  final DateTime? scheduledPayoutDate;

  final bool? payOutFailed;
  final DateTime? payOutFailureDate;
  final String? batchManifestId;

  final String? bookingId;

  const StripeDynamicLineItem({
    this.id,
    this.priceData,
    this.quantity,
    this.taxRates,
    this.isTaxExempt,
    this.isPendingRefund,
    this.isRefunded,
    this.isDisputed,
    this.paidBookingId,
    this.refundBookingId,
    this.discount,
    // Payout Stuff
    this.isPaidOut,
    this.payoutDate,
    this.isPendingPayOut,
    this.scheduledPayoutDate,
    this.payOutFailed,
    this.payOutFailureDate,
    this.batchManifestId,
    this.bookingId,
  });

  factory StripeDynamicLineItem.initial() {
    return StripeDynamicLineItem(
        id: const Uuid().v4(),
        quantity: 0,
        priceData: const StripePriceData(
            unitAmount: 0, productData: StripeProductData()),
        isTaxExempt: false,
        isPendingRefund: false,
        isRefunded: false);
  }

  StripeDynamicLineItem copyWith({
    StripePriceData? priceData,
    int? quantity,
    List<String>? taxRates,
    bool? isTaxExempt,
    bool? isRefunded,
    bool? isDisputed,
    bool? isPendingRefund,
    String? paidBookingId,
    String? refundBookingId,
    DiscountDescriptionModel? discount,
    bool? isPaidOut,
    DateTime? payoutDate,
    bool? isPendingPayOut,
    DateTime? scheduledPayoutDate,
    bool? payOutFailed,
    DateTime? payOutFailureDate,
    String? batchManifestId,
    String? bookingId,
  }) {
    return StripeDynamicLineItem(
      id: id,
      priceData: priceData ?? this.priceData,
      quantity: quantity ?? this.quantity,
      taxRates: taxRates ?? this.taxRates,
      isTaxExempt: isTaxExempt ?? this.isTaxExempt,
      isRefunded: isRefunded ?? this.isRefunded,
      isPendingRefund: isPendingRefund ?? this.isPendingRefund,
      isDisputed: isDisputed ?? this.isDisputed,
      paidBookingId: paidBookingId ?? this.paidBookingId,
      refundBookingId: refundBookingId ?? this.refundBookingId,
      discount: discount ?? this.discount,
      isPaidOut: isPaidOut ?? this.isPaidOut,
      payoutDate: payoutDate ?? this.payoutDate,
      isPendingPayOut: isPendingPayOut ?? this.isPendingPayOut,
      scheduledPayoutDate: scheduledPayoutDate ?? this.scheduledPayoutDate,
      payOutFailed: payOutFailed ?? this.payOutFailed,
      payOutFailureDate: payOutFailureDate ?? this.payOutFailureDate,
      batchManifestId: batchManifestId ?? this.batchManifestId,
      bookingId: bookingId ?? this.bookingId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'price_data': priceData?.toMap(),
      'quantity': quantity,
      'tax_rates': taxRates ?? [],
      'isTaxExempt': isTaxExempt ?? false,
      'isRefunded': isRefunded ?? false,
      'isPendingRefund': isPendingRefund ?? false,
      'isDisputed': isDisputed ?? false,
      'paidBookingId': paidBookingId,
      'refundBookingId': refundBookingId,
      'discount': discount?.toMap(),
      'isPaidOut': isPaidOut,
      'payoutDate': payoutDate?.toUtc().millisecondsSinceEpoch,
      'isPendingPayOut': isPendingPayOut,
      'scheduledPayoutDate':
          scheduledPayoutDate?.toUtc().millisecondsSinceEpoch,
      'payOutFailed': payOutFailed,
      'payOutFailureDate': payOutFailureDate?.toUtc().millisecondsSinceEpoch,
      'batchManifestId': batchManifestId,
      'bookingId': bookingId,
    };
  }

  factory StripeDynamicLineItem.fromMap(Map<String, dynamic> map) {
    return StripeDynamicLineItem(
      id: map['id'],
      priceData: map['price_data'] != null
          ? StripePriceData.fromMap(map['price_data'])
          : null,
      quantity: map['quantity']?.toInt(),
      taxRates: List<String>.from(map['tax_rates']),
      isTaxExempt: map['isTaxExempt'] ?? false,
      isRefunded: map['isRefunded'] ?? false,
      isPendingRefund: map['isPendingRefund'] ?? false,
      isDisputed: map['isDisputed'] ?? false,
      paidBookingId: map['paidBookingId'],
      refundBookingId: map['refundBookingId'],
      discount: map['discount'] != null
          ? DiscountDescriptionModel.fromMap(map['discount'])
          : null,
      isPaidOut: map['isPaidOut'] ?? false,
      payoutDate: map['payoutDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['payoutDate']).toLocal()
          : null,
      isPendingPayOut: map['isPendingPayOut'] ?? false,
      scheduledPayoutDate: map['scheduledPayoutDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['scheduledPayoutDate'])
              .toLocal()
          : null,
      payOutFailed: map['payOutFailed'],
      payOutFailureDate: map['payOutFailureDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['payOutFailureDate'])
              .toLocal()
          : null,
      batchManifestId: map['batchManifestId'],
      bookingId: map['bookingId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StripeDynamicLineItem.fromJson(String source) =>
      StripeDynamicLineItem.fromMap(json.decode(source));

  @override
  String toString() =>
      'StripeDynamicLineItem(priceData: $priceData, quantity: $quantity, taxRates: $taxRates, isTaxExempt: $isTaxExempt)';

  @override
  List<Object?> get props => [
        id,
        priceData,
        quantity,
        taxRates,
        isTaxExempt,
        isRefunded,
        isPendingRefund,
        isDisputed,
        paidBookingId,
        refundBookingId,
        discount,
        isPaidOut,
        payoutDate,
        isPendingPayOut,
        scheduledPayoutDate,
        payOutFailed,
        payOutFailureDate,
        batchManifestId,
        bookingId,
      ];
}

class StripePriceData extends Equatable {
  final StripeProductData? productData;
  final int? unitAmount;

  const StripePriceData({
    this.productData,
    this.unitAmount,
  });

  StripePriceData copyWith({
    StripeProductData? productData,
    int? unitAmount,
  }) {
    return StripePriceData(
      productData: productData ?? this.productData,
      unitAmount: unitAmount ?? this.unitAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product_data': productData?.toMap(),
      'unit_amount': unitAmount,
    };
  }

  factory StripePriceData.fromMap(Map<String, dynamic> map) {
    return StripePriceData(
      productData: map['product_data'] != null
          ? StripeProductData.fromMap(map['product_data'])
          : null,
      unitAmount: map['unit_amount']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory StripePriceData.fromJson(String source) =>
      StripePriceData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StripePriceData(productData: $productData, unitAmount: $unitAmount)';
  }

  @override
  List<Object?> get props {
    return [
      productData,
      unitAmount,
    ];
  }
}

class StripeProductData extends Equatable {
  final String? name;
  final String? description;

  const StripeProductData({
    this.name,
    this.description,
  });

  StripeProductData copyWith({
    String? name,
    String? description,
  }) {
    return StripeProductData(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
    };
  }

  factory StripeProductData.fromMap(Map<String, dynamic> map) {
    return StripeProductData(
      name: map['name'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StripeProductData.fromJson(String source) =>
      StripeProductData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StripeProductData(name: $name)';
  }

  @override
  List<Object?> get props => [
        name,
        description,
      ];
}