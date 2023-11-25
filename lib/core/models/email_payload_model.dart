import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/email_message_type.dart';

class EmailPayloadModel extends Equatable {
  final List<String>? toAddresses;
  final EmailMessageType? emailType;
  final List<String>? attachments;
  final Map<String, dynamic>? substitutions;

  const EmailPayloadModel({
    this.toAddresses,
    this.emailType,
    this.attachments,
    this.substitutions,
  });

  EmailPayloadModel copyWith({
    List<String>? toAddresses,
    EmailMessageType? emailType,
    List<String>? attachments,
    Map<String, dynamic>? substitutions,
  }) {
    return EmailPayloadModel(
      toAddresses: toAddresses ?? this.toAddresses,
      emailType: emailType ?? this.emailType,
      attachments: attachments ?? this.attachments,
      substitutions: substitutions ?? this.substitutions,
    );
  }

  @override
  List<Object?> get props =>
      [toAddresses, emailType, attachments, substitutions];

  Map<String, dynamic> toMap() {
    return {
      'toAddresses': toAddresses,
      'emailType': emailType?.toMap(),
      'attachments': attachments,
      'substitutions': substitutions,
    };
  }

  factory EmailPayloadModel.fromMap(Map<String, dynamic> map) {
    const staticType = EmailMessageType.unknown;

    return EmailPayloadModel(
      toAddresses: List<String>.from(map['toAddresses']),
      emailType: map['emailType'] != null
          ? staticType.fromMap(map['emailType'])
          : null,
      attachments: List<String>.from(map['attachments']),
      substitutions: Map<String, dynamic>.from(map['substitutions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EmailPayloadModel.fromJson(String source) =>
      EmailPayloadModel.fromMap(json.decode(source));
}