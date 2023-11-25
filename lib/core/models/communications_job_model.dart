import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/models/email_payload_model.dart';
import 'package:tuiicore/core/models/sms_payload_model.dart';

class CommunicationsJobModel extends Equatable {
  final bool sendEmail;
  final bool sendSms;
  final EmailPayloadModel? emailPayload;
  final SmsPayloadModel? smsPayload;
  const CommunicationsJobModel({
    required this.sendEmail,
    required this.sendSms,
    this.emailPayload,
    this.smsPayload,
  });

  CommunicationsJobModel copyWith({
    bool? sendEmail,
    bool? sendSms,
    EmailPayloadModel? emailPayload,
    SmsPayloadModel? smsPayload,
  }) {
    return CommunicationsJobModel(
      sendEmail: sendEmail ?? this.sendEmail,
      sendSms: sendSms ?? this.sendSms,
      emailPayload: emailPayload ?? this.emailPayload,
      smsPayload: smsPayload ?? this.smsPayload,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sendEmail': sendEmail,
      'sendSms': sendSms,
      'emailPayload': emailPayload?.toMap(),
      'smsPayload': smsPayload?.toMap(),
    };
  }

  factory CommunicationsJobModel.fromMap(Map<String, dynamic> map) {
    return CommunicationsJobModel(
      sendEmail: map['sendEmail'] ?? false,
      sendSms: map['sendSms'] ?? false,
      emailPayload: map['emailPayload'] != null
          ? EmailPayloadModel.fromMap(map['emailPayload'])
          : null,
      smsPayload: map['smsPayload'] != null
          ? SmsPayloadModel.fromMap(map['smsPayload'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommunicationsJobModel.fromJson(String source) =>
      CommunicationsJobModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CommunicationsJobModel(sendEmail: $sendEmail, sendSms: $sendSms, emailPayload: $emailPayload, smsPayload: $smsPayload)';
  }

  @override
  List<Object?> get props => [sendEmail, sendSms, emailPayload, smsPayload];
}