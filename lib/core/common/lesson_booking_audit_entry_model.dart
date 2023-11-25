import 'dart:convert';

import 'package:equatable/equatable.dart';

class LessonBookingAuditEntryModel extends Equatable {
  final DateTime creationDate;
  final String userName;
  final String message;

  const LessonBookingAuditEntryModel({
    required this.creationDate,
    required this.userName,
    required this.message,
  });

  LessonBookingAuditEntryModel copyWith({
    DateTime? creationDate,
    String? userName,
    String? message,
  }) {
    return LessonBookingAuditEntryModel(
      creationDate: creationDate ?? this.creationDate,
      userName: userName ?? this.userName,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'creationDate': creationDate.toUtc().millisecondsSinceEpoch,
      'userName': userName,
      'message': message,
    };
  }

  factory LessonBookingAuditEntryModel.fromMap(Map<String, dynamic> map) {
    return LessonBookingAuditEntryModel(
      creationDate:
          DateTime.fromMillisecondsSinceEpoch(map['creationDate']).toLocal(),
      userName: map['userName'] ?? '',
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonBookingAuditEntryModel.fromJson(String source) =>
      LessonBookingAuditEntryModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'LessonBookingAuditEntryModel(creationDate: $creationDate, message: $message)';

  @override
  List<Object> get props => [creationDate, userName, message];
}