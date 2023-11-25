import 'package:flutter/foundation.dart';

enum AttendanceStatusType {
  pending,
  attended,
  lateAttended,
  notAttended,
  teacherAbsent,
  studentAbsent,
  unknown
}

extension AttendanceStatusTypeExtension on AttendanceStatusType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case AttendanceStatusType.pending:
        return ' - ';
      case AttendanceStatusType.attended:
        return 'Attended';
      case AttendanceStatusType.lateAttended:
        return 'Late Attended';
      case AttendanceStatusType.notAttended:
        return 'Not Attended';
      case AttendanceStatusType.teacherAbsent:
        return 'Teacher Absent';
      case AttendanceStatusType.studentAbsent:
        return 'Student Absent';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case AttendanceStatusType.pending:
        return 'pending';
      case AttendanceStatusType.attended:
        return 'attended';
      case AttendanceStatusType.lateAttended:
        return 'lateAttended';
      case AttendanceStatusType.notAttended:
        return 'notAttended';
      case AttendanceStatusType.teacherAbsent:
        return 'teacherAbsent';
      case AttendanceStatusType.studentAbsent:
        return 'studentAbsent';
      default:
        return 'unknown';
    }
  }

  AttendanceStatusType fromMap(String? type) {
    switch (type) {
      case 'pending':
        return AttendanceStatusType.pending;
      case 'attended':
        return AttendanceStatusType.attended;
      case 'lateAttended':
        return AttendanceStatusType.lateAttended;
      case 'notAttended':
        return AttendanceStatusType.notAttended;
      case 'teacherAbsent':
        return AttendanceStatusType.teacherAbsent;
      case 'studentAbsent':
        return AttendanceStatusType.studentAbsent;
      default:
        return AttendanceStatusType.notAttended;
    }
  }

  AttendanceStatusType fromDisplay(String display) {
    switch (display) {
      case ' - ':
        return AttendanceStatusType.pending;
      case 'Attended':
        return AttendanceStatusType.attended;
      case 'Late Attended':
        return AttendanceStatusType.lateAttended;
      case 'Not Attended':
        return AttendanceStatusType.notAttended;
      case 'Teacher Absent':
        return AttendanceStatusType.teacherAbsent;
      case 'Student Absent':
        return AttendanceStatusType.studentAbsent;
      default:
        return AttendanceStatusType.unknown;
    }
  }
}