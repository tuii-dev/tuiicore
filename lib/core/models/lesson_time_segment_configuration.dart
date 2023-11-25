import 'dart:convert';

import 'package:equatable/equatable.dart';

class LessonTimeSegmentConfiguration extends Equatable {
  final int minutes;
  final String displayText;
  final bool? defaultSegment;
  final double? cost;
  final double? index;

  const LessonTimeSegmentConfiguration({
    required this.minutes,
    required this.displayText,
    this.defaultSegment = false,
    this.cost,
    this.index,
  });

  @override
  List<Object?> get props =>
      [minutes, displayText, defaultSegment, cost, index];

  LessonTimeSegmentConfiguration copyWith({
    int? minutes,
    String? displayText,
    bool? defaultSegment,
    double? cost,
    double? index,
  }) {
    return LessonTimeSegmentConfiguration(
      minutes: minutes ?? this.minutes,
      displayText: displayText ?? this.displayText,
      defaultSegment: defaultSegment ?? this.defaultSegment,
      cost: cost ?? this.cost,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'minutes': minutes,
      'displayText': displayText,
      'defaultSegment': defaultSegment,
    };
  }

  factory LessonTimeSegmentConfiguration.fromMap(Map<String, dynamic> map) {
    return LessonTimeSegmentConfiguration(
      minutes: map['minutes']?.toInt() ?? 0,
      displayText: map['displayText'] ?? '',
      defaultSegment: map['defaultSegment'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonTimeSegmentConfiguration.fromJson(String source) =>
      LessonTimeSegmentConfiguration.fromMap(json.decode(source));
}