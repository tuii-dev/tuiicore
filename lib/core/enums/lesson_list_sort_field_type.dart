import 'package:flutter/foundation.dart';

enum LessonListSortFieldType {
  lessonName,
  lessonDescription,
  startDate,
  deliveryMode,
  none,
}

extension LessonListSortFieldExtension on LessonListSortFieldType {
  String get name {
    return describeEnum(this);
  }
}