import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/reminder_frequency_type.dart';

class ReminderScheduleModel extends Equatable {
  final ReminderFrequencyType frequencyType;
  final int? month;
  final int? dayOfMonth;
  final int? weekday;
  final int hour;
  final int minutes;

  const ReminderScheduleModel({
    required this.frequencyType,
    this.month,
    this.dayOfMonth,
    this.weekday,
    required this.hour,
    required this.minutes,
  });

  @override
  List<Object?> get props {
    return [
      frequencyType,
      month,
      dayOfMonth,
      weekday,
      hour,
      minutes,
    ];
  }

  ReminderScheduleModel copyWith({
    ReminderFrequencyType? frequencyType,
    int? month,
    int? dayOfMonth,
    int? weekday,
    int? hour,
    int? minutes,
  }) {
    return ReminderScheduleModel(
      frequencyType: frequencyType ?? this.frequencyType,
      month: month ?? this.month,
      dayOfMonth: dayOfMonth ?? this.dayOfMonth,
      weekday: weekday ?? this.weekday,
      hour: hour ?? this.hour,
      minutes: minutes ?? this.minutes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'frequencyType': frequencyType.toMap(),
      'month': month ?? -1,
      'dayOfMonth': dayOfMonth ?? -1,
      'weekday': weekday ?? -1,
      'hour': hour,
      'minutes': minutes,
    };
  }

  factory ReminderScheduleModel.fromMap(Map<String, dynamic> map) {
    const staticType = ReminderFrequencyType.unknown;
    return ReminderScheduleModel(
      frequencyType: staticType.fromMap(map['frequencyType']),
      month: map['month']?.toInt(),
      dayOfMonth: map['dayOfMonth']?.toInt(),
      weekday: map['weekday']?.toInt(),
      hour: map['hour']?.toInt() ?? 0,
      minutes: map['minutes']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReminderScheduleModel.fromJson(String source) =>
      ReminderScheduleModel.fromMap(json.decode(source));
}