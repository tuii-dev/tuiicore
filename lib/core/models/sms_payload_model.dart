import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/sms_message_type.dart';

class SmsPayloadModel extends Equatable {
  final List<String>? toNumbers;
  final SmsMessageType? smsType;
  final Map<String, dynamic>? substitutions;

  const SmsPayloadModel({
    this.toNumbers,
    this.smsType,
    this.substitutions,
  });

  SmsPayloadModel copyWith({
    List<String>? toNumbers,
    SmsMessageType? smsType,
    List<String>? attachments,
    Map<String, dynamic>? substitutions,
  }) {
    return SmsPayloadModel(
      toNumbers: toNumbers ?? this.toNumbers,
      smsType: smsType ?? this.smsType,
      substitutions: substitutions ?? this.substitutions,
    );
  }

  @override
  List<Object?> get props => [toNumbers, smsType, substitutions];

  Map<String, dynamic> toMap() {
    return {
      'toNumbers': toNumbers,
      'smsType': smsType?.toMap(),
      'substitutions': substitutions,
    };
  }

  factory SmsPayloadModel.fromMap(Map<String, dynamic> map) {
    const staticType = SmsMessageType.unknown;

    return SmsPayloadModel(
      toNumbers: List<String>.from(map['toNumbers']),
      smsType:
          map['smsType'] != null ? staticType.fromMap(map['smsType']) : null,
      substitutions: Map<String, dynamic>.from(map['substitutions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SmsPayloadModel.fromJson(String source) =>
      SmsPayloadModel.fromMap(json.decode(source));
}