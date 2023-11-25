import 'package:flutter/foundation.dart';

enum ClassroomHomeSortFieldType {
  userFullName,
  userFirstName,
  userLastName,
  startDate,
  enrollmentStatus,
  lessonSubject,
  communicationGroupCount,
  communicationGroupName,
  none,
}

extension CklassroomHomeSortFieldExtension on ClassroomHomeSortFieldType {
  String get name {
    return describeEnum(this);
  }
}

enum CommunicationGroupSortFieldType {
  communicationGroupCount,
  communicationGroupName,
  none,
}

extension CommunicationGroupSortFieldExtension
    on CommunicationGroupSortFieldType {
  String get name {
    return describeEnum(this);
  }
}