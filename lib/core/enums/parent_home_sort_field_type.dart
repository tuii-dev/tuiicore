import 'package:flutter/foundation.dart';

enum ParentHomeSortFieldType {
  tutorFullName,
  tutorFirstName,
  tutorLastName,
  tutorSubjects,
  connectionDate,
  rating,
  none,
}

extension ParentHomeSortFieldExtension on ParentHomeSortFieldType {
  String get name {
    return describeEnum(this);
  }
}