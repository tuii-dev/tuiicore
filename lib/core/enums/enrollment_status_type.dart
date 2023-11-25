import 'package:flutter/foundation.dart';

enum EnrollmentStatusType {
  enrolled,
  inactive,
  awaitingResponse,
  awaitingConfirmation,
  rejected,
  pending,
  unknown
}

extension EnrollmentStatusTypeExtension on EnrollmentStatusType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case EnrollmentStatusType.enrolled:
        return 'Enrolled';
      case EnrollmentStatusType.awaitingResponse:
        return 'Awaiting Response';
      case EnrollmentStatusType.awaitingConfirmation:
        return 'Awaiting Confirmation';
      case EnrollmentStatusType.rejected:
        return 'Rejected';
      case EnrollmentStatusType.inactive:
        return 'Inactive';
      case EnrollmentStatusType.pending:
        return 'Pending';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case EnrollmentStatusType.enrolled:
        return 'enrolled';
      case EnrollmentStatusType.awaitingResponse:
        return 'awaitingResponse';
      case EnrollmentStatusType.awaitingConfirmation:
        return 'awaitingConfirmation';
      case EnrollmentStatusType.rejected:
        return 'rejected';
      case EnrollmentStatusType.inactive:
        return 'inactive';
      case EnrollmentStatusType.pending:
        return 'pending';
      default:
        return 'unknown';
    }
  }

  EnrollmentStatusType fromMap(String? type) {
    switch (type) {
      case 'enrolled':
        return EnrollmentStatusType.enrolled;
      case 'awaitingResponse':
        return EnrollmentStatusType.awaitingResponse;
      case 'awaitingConfirmation':
        return EnrollmentStatusType.awaitingConfirmation;
      case 'rejected':
        return EnrollmentStatusType.rejected;
      case 'inactive':
        return EnrollmentStatusType.inactive;
      case 'pending':
        return EnrollmentStatusType.pending;
      default:
        return EnrollmentStatusType.unknown;
    }
  }

  EnrollmentStatusType fromDisplay(String display) {
    switch (display) {
      case 'Enrolled':
        return EnrollmentStatusType.enrolled;
      case 'Awaiting Response':
        return EnrollmentStatusType.awaitingResponse;
      case 'Awaiting Confirmation':
        return EnrollmentStatusType.awaitingConfirmation;
      case 'Rejected':
        return EnrollmentStatusType.rejected;
      case 'Inactive':
        return EnrollmentStatusType.inactive;
      case 'Pending':
        return EnrollmentStatusType.pending;
      default:
        return EnrollmentStatusType.unknown;
    }
  }
}