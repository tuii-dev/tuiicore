import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:tuiicore/core/enums/lesson_delivery_type.dart';
import 'package:tuiicore/core/models/stripe_product_model.dart';

import 'lesson_time_segment_configuration.dart';

class LessonConfiguration extends Equatable {
  final String id;
  final double cost;
  final bool defaultRule;
  final List<LessonTimeSegmentConfiguration> timeSegments;
  final List<String> subjects;
  final List<LessonDeliveryType> deliveryModes;
  final StripeProduct? product;

  final bool? enabled;

  // Stripe price changes
  final double? undoCost;

  const LessonConfiguration({
    required this.id,
    required this.cost,
    required this.defaultRule,
    required this.timeSegments,
    required this.subjects,
    required this.deliveryModes,
    this.product,
    this.undoCost,
    this.enabled,
  });

  @override
  List<Object?> get props {
    return [
      id,
      cost,
      defaultRule,
      timeSegments,
      subjects,
      deliveryModes,
      product,
      undoCost,
      enabled,
    ];
  }

  LessonConfiguration copyWith({
    double? cost,
    bool? defaultRule,
    List<LessonTimeSegmentConfiguration>? timeSegments,
    List<String>? subjects,
    List<LessonDeliveryType>? deliveryModes,
    StripeProduct? product,
    double? undoCost,
    bool? enabled,
  }) {
    return LessonConfiguration(
      id: id,
      cost: cost ?? this.cost,
      defaultRule: defaultRule ?? this.defaultRule,
      timeSegments: timeSegments ?? this.timeSegments,
      subjects: subjects ?? this.subjects,
      deliveryModes: deliveryModes ?? this.deliveryModes,
      product: product ?? this.product,
      undoCost: undoCost ?? this.undoCost,
      enabled: enabled ?? this.enabled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cost': cost,
      'defaultRule': defaultRule,
      'timeSegments': timeSegments.map((x) => x.toMap()).toList(),
      'subjects': subjects,
      'deliveryModes': deliveryModes.map((x) => x.toMap()).toList(),
      'product': product?.toMap(),
      'undoCost': undoCost,
      'enabled': enabled,
    };
  }

  factory LessonConfiguration.fromMap(Map<String, dynamic> map) {
    const staticType = LessonDeliveryType.unknown;
    return LessonConfiguration(
      id: map['id'] ?? const Uuid().v4(),
      cost: map['cost']?.toDouble() ?? 0.0,
      defaultRule: map['defaultRule'] ?? false,
      timeSegments: List<LessonTimeSegmentConfiguration>.from(
          map['timeSegments']
              ?.map((x) => LessonTimeSegmentConfiguration.fromMap(x))),
      subjects: List<String>.from(map['subjects']),
      deliveryModes: List<LessonDeliveryType>.from(
          map['deliveryModes']?.map((x) => staticType.fromMap(x))),
      product:
          map['product'] != null ? StripeProduct.fromMap(map['product']) : null,
      undoCost: map['undoCost'],
      enabled: map['enabled'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonConfiguration.fromJson(String source) =>
      LessonConfiguration.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LessonConfiguration(cost: $cost, defaultRule: $defaultRule, timeSegments: $timeSegments, subjects: $subjects, deliveryModes: $deliveryModes)';
  }
}