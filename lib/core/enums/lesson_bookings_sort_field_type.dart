import 'package:flutter/foundation.dart';

enum LessonBookingsSortFieldType {
  studentName,
  subject,
  lastUpdatedDate,
  totalAmount,
  status,
  none,
}

extension LessonBookingsSortFieldTypeExtension on LessonBookingsSortFieldType {
  String get name {
    return describeEnum(this);
  }
}