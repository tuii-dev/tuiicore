import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CalendarLegendItemModel extends Equatable {
  final Color color;
  final String text;
  const CalendarLegendItemModel({
    required this.color,
    required this.text,
  });

  @override
  List<Object> get props => [color, text];
}