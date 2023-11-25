import 'package:flutter/foundation.dart';

enum TuiiRoleType { tutor, parent, student, unknown }

extension TuiiRoleTypeExtension on TuiiRoleType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case TuiiRoleType.tutor:
        return 'Educator';
      case TuiiRoleType.parent:
        return 'Parent';
      case TuiiRoleType.student:
        return 'Student';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case TuiiRoleType.tutor:
        return 'tutor';
      case TuiiRoleType.parent:
        return 'parent';
      case TuiiRoleType.student:
        return 'student';
      default:
        return 'unknown';
    }
  }

  TuiiRoleType fromMap(String? type) {
    switch (type) {
      case 'tutor':
        return TuiiRoleType.tutor;
      case 'parent':
        return TuiiRoleType.parent;
      case 'student':
        return TuiiRoleType.student;
      default:
        return TuiiRoleType.unknown;
    }
  }

  TuiiRoleType fromDisplay(String display) {
    switch (display) {
      case 'Educator':
        return TuiiRoleType.tutor;
      case 'Parent':
        return TuiiRoleType.parent;
      case 'Student':
        return TuiiRoleType.student;
      default:
        return TuiiRoleType.unknown;
    }
  }
}