import 'package:flutter/foundation.dart';

enum LessonBookingStatusType {
  pending,
  paid,
  rejected,
  refundRequest,
  issueRefund,
  partiallyRefunded,
  refunded,
  refundRejected,
  confirmRefund,
  canceled,
  disputed,
  unknown
}

extension LessonBookingStatusTypeExtension on LessonBookingStatusType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case LessonBookingStatusType.pending:
        return 'Pending';
      case LessonBookingStatusType.paid:
        return 'Paid';
      case LessonBookingStatusType.rejected:
        return 'Rejected';
      case LessonBookingStatusType.refundRequest:
        return 'Refund Request';
      case LessonBookingStatusType.issueRefund:
        return 'Issue Refund';
      case LessonBookingStatusType.refundRejected:
        return 'Refund Rejected';
      case LessonBookingStatusType.partiallyRefunded:
        return 'Partially Refunded';
      case LessonBookingStatusType.refunded:
        return 'Refunded';
      case LessonBookingStatusType.confirmRefund:
        return 'Confirm Refund';
      case LessonBookingStatusType.canceled:
        return 'Canceled';
      case LessonBookingStatusType.disputed:
        return 'Disputed';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case LessonBookingStatusType.pending:
        return 'pending';
      case LessonBookingStatusType.paid:
        return 'paid';
      case LessonBookingStatusType.rejected:
        return 'rejected';
      case LessonBookingStatusType.refundRequest:
        return 'refundRequest';
      case LessonBookingStatusType.issueRefund:
        return 'issueRefund';
      case LessonBookingStatusType.refunded:
        return 'refunded';
      case LessonBookingStatusType.partiallyRefunded:
        return 'partiallyRefunded';
      case LessonBookingStatusType.refundRejected:
        return 'refundRejected';
      case LessonBookingStatusType.confirmRefund:
        return 'confirmRefund';
      case LessonBookingStatusType.canceled:
        return 'canceled';
      case LessonBookingStatusType.disputed:
        return 'disputed';
      default:
        return 'unknown';
    }
  }

  LessonBookingStatusType fromMap(String? type) {
    switch (type) {
      case 'pending':
        return LessonBookingStatusType.pending;
      case 'paid':
        return LessonBookingStatusType.paid;
      case 'rejected':
        return LessonBookingStatusType.rejected;
      case 'refunded':
        return LessonBookingStatusType.refunded;
      case 'partiallyRefunded':
        return LessonBookingStatusType.partiallyRefunded;
      case 'refundRequest':
        return LessonBookingStatusType.refundRequest;
      case 'issueRefund':
        return LessonBookingStatusType.issueRefund;
      case 'refundRejected':
        return LessonBookingStatusType.refundRejected;
      case 'confirmRefund':
        return LessonBookingStatusType.confirmRefund;
      case 'canceled':
        return LessonBookingStatusType.canceled;
      case 'disputed':
        return LessonBookingStatusType.disputed;
      default:
        return LessonBookingStatusType.unknown;
    }
  }

  LessonBookingStatusType fromDisplay(String display) {
    switch (display) {
      case 'Pending':
        return LessonBookingStatusType.pending;
      case 'Paid':
        return LessonBookingStatusType.paid;
      case 'Rejected':
        return LessonBookingStatusType.rejected;
      case 'Refund Request':
        return LessonBookingStatusType.refundRequest;
      case 'Issue Refund':
        return LessonBookingStatusType.issueRefund;
      case 'Refunded':
        return LessonBookingStatusType.refunded;
      case 'Partially Refunded':
        return LessonBookingStatusType.partiallyRefunded;
      case 'Refund Rejected':
        return LessonBookingStatusType.refundRejected;
      case 'Confirm Refund':
        return LessonBookingStatusType.confirmRefund;
      case 'Canceled':
        return LessonBookingStatusType.canceled;
      case 'Disputed':
        return LessonBookingStatusType.disputed;
      default:
        return LessonBookingStatusType.unknown;
    }
  }
}