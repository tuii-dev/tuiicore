import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/channel_type.dart';
import 'package:tuiicore/core/models/stripe_dynamic_line_item.dart';
import 'package:tuiicore/core/models/stripe_product_line_item_model.dart';

class StripePaymentModel extends Equatable {
  final String? bookingId;
  final String? studentId;
  final bool? studentHasCustodian;
  final String? studentCustodianId;
  final String? tutorId;
  final String? tutorAccountId;
  final String? studentEmail;
  final String? stripeCustomerId;
  final List<StripeProductLineItem>? lessonLineItems;
  final List<StripeDynamicLineItem>? additionalCosts;
  final StripeDynamicLineItem? platformFeesLineItem;
  final StripeDynamicLineItem? totalTaxLineItem;
  final double? taxRate;
  final String? taxLabel;
  final String? currencyCode;
  final String? currencySymbol;
  final double? platformTransactionFee;
  final double? platformPercentageRate;
  final String? statementDescriptorSuffix;

  final ChannelType? channel;

  const StripePaymentModel({
    this.bookingId,
    this.studentId,
    this.studentHasCustodian,
    this.studentCustodianId,
    this.tutorId,
    this.tutorAccountId,
    this.studentEmail,
    this.stripeCustomerId,
    this.lessonLineItems,
    this.additionalCosts,
    this.platformFeesLineItem,
    this.totalTaxLineItem,
    this.taxRate,
    this.taxLabel,
    this.currencyCode,
    this.currencySymbol,
    this.platformTransactionFee,
    this.platformPercentageRate,
    this.statementDescriptorSuffix,
    this.channel,
  });

  StripePaymentModel copyWith({
    String? bookingId,
    String? studentId,
    bool? studentHasCustodian,
    String? studentCustodianId,
    String? tutorId,
    String? tutorAccountId,
    String? studentEmail,
    String? stripeCustomerId,
    List<StripeProductLineItem>? lessonLineItems,
    List<StripeDynamicLineItem>? additionalCosts,
    StripeDynamicLineItem? platformFeesLineItem,
    StripeDynamicLineItem? totalTaxLineItem,
    double? taxRate,
    String? taxLabel,
    String? currencyCode,
    String? currencySymbol,
    double? platformTransactionFee,
    double? platformPercentageRate,
    String? statementDescriptorSuffix,
    ChannelType? channel,
  }) {
    return StripePaymentModel(
      bookingId: bookingId ?? this.bookingId,
      studentId: studentId ?? this.studentId,
      studentHasCustodian: studentHasCustodian ?? this.studentHasCustodian,
      studentCustodianId: studentCustodianId ?? this.studentCustodianId,
      tutorId: tutorId ?? this.tutorId,
      tutorAccountId: tutorAccountId ?? this.tutorAccountId,
      studentEmail: studentEmail ?? this.studentEmail,
      stripeCustomerId: stripeCustomerId ?? this.stripeCustomerId,
      lessonLineItems: lessonLineItems ?? this.lessonLineItems,
      additionalCosts: additionalCosts ?? this.additionalCosts,
      platformFeesLineItem: platformFeesLineItem ?? this.platformFeesLineItem,
      totalTaxLineItem: totalTaxLineItem ?? this.totalTaxLineItem,
      taxRate: taxRate ?? this.taxRate,
      taxLabel: taxLabel ?? this.taxLabel,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      platformTransactionFee:
          platformTransactionFee ?? this.platformTransactionFee,
      platformPercentageRate:
          platformPercentageRate ?? this.platformPercentageRate,
      statementDescriptorSuffix:
          statementDescriptorSuffix ?? this.statementDescriptorSuffix,
      channel: channel ?? this.channel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bookingId': bookingId,
      'studentId': studentId,
      'studentHasCustodian': studentHasCustodian,
      'studentCustodianId': studentCustodianId,
      'tutorId': tutorId,
      'tutorAccountId': tutorAccountId,
      'studentEmail': studentEmail,
      'stripeCustomerId': stripeCustomerId,
      'lessonLineItems': lessonLineItems?.map((x) => x.toMap()).toList(),
      'additionalCosts': additionalCosts?.map((x) => x.toMap()).toList(),
      'platformFeesLineItem': platformFeesLineItem?.toMap(),
      'totalTaxLineItem': totalTaxLineItem?.toMap(),
      'taxRate': taxRate,
      'taxLabel': taxLabel,
      'currencyCode': currencyCode,
      'currencySymbol': currencySymbol,
      'platformTransactionFee': platformTransactionFee,
      'platformPercentageRate': platformPercentageRate,
      'statementDescriptorSuffix': statementDescriptorSuffix,
      'channel': channel?.toMap(),
    };
  }

  factory StripePaymentModel.fromMap(Map<String, dynamic> map) {
    return StripePaymentModel(
      bookingId: map['bookingId'],
      studentId: map['studentId'],
      studentHasCustodian: map['studentHasCustodian'] ?? false,
      studentCustodianId: map['studentCustodianId'],
      tutorId: map['tutorId'],
      tutorAccountId: map['tutorAccountId'],
      studentEmail: map['studentEmail'],
      stripeCustomerId: map['stripeCustomerId'],
      lessonLineItems: map['lessonLineItems'] != null
          ? List<StripeProductLineItem>.from(map['lessonLineItems']
              ?.map((x) => StripeProductLineItem.fromMap(x)))
          : [],
      additionalCosts: map['additionalCosts'] != null
          ? List<StripeDynamicLineItem>.from(map['lessonLineItems']
              ?.map((x) => StripeDynamicLineItem.fromMap(x)))
          : [],
      platformFeesLineItem: map['platformFeesLineItem'] != null
          ? StripeDynamicLineItem.fromMap(map['platformFeesLineItem'])
          : null,
      totalTaxLineItem: map['totalTaxLineItem'] != null
          ? StripeDynamicLineItem.fromMap(map['totalTaxLineItem'])
          : null,
      taxRate: map['taxRate'],
      taxLabel: map['taxLabel'],
      currencyCode: map['currencyCode'],
      currencySymbol: map['currencySymbol'],
      platformTransactionFee: map['platformTransactionFee'],
      platformPercentageRate: map['platformPercentageRate'],
      statementDescriptorSuffix: map['statementDescriptorSuffix'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StripePaymentModel.fromJson(String source) =>
      StripePaymentModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StripePaymentModel(bookingId: $bookingId, lessonLineItems: $lessonLineItems, platformFeesLineItem: $platformFeesLineItem, taxLineItem: $totalTaxLineItem)';
  }

  @override
  List<Object?> get props => [
        bookingId,
        studentId,
        studentHasCustodian,
        studentCustodianId,
        tutorId,
        tutorAccountId,
        studentEmail,
        stripeCustomerId,
        lessonLineItems,
        additionalCosts,
        platformFeesLineItem,
        totalTaxLineItem,
        taxRate,
        taxLabel,
        currencyCode,
        currencySymbol,
        platformTransactionFee,
        platformPercentageRate,
        statementDescriptorSuffix,
        channel
      ];
}