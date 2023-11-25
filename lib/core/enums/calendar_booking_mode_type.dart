import 'package:flutter/foundation.dart';

enum CalendarBookingModeType {
  newBooking,
  rescheduling,
  bookingConfirmationRequested,
  bookingRefundRequested,
  bookingTutorRefundInitiated,
  bookingTutorRefundCompleted,
  pendingUserFeedback,
  modifyRejected,
  modifyAccepted,
  bookingLocked,
  bookingRefundLocked,
  bookingRefundRejected,
  bookingRefundAccepted,
  bookingPartialRefundAccepted,
  bookingRefundDisputed,
  bookingPaid,
  unknown
}

extension CalendarBookingModeTypeExtension on CalendarBookingModeType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case CalendarBookingModeType.newBooking:
        return 'newBooking';
      case CalendarBookingModeType.rescheduling:
        return 'rescheduling';
      case CalendarBookingModeType.bookingConfirmationRequested:
        return 'bookingConfirmationRequested';
      case CalendarBookingModeType.bookingRefundRequested:
        return 'bookingRefundRequested';
      case CalendarBookingModeType.bookingTutorRefundInitiated:
        return 'bookingRefundTutorInitiated';
      case CalendarBookingModeType.pendingUserFeedback:
        return 'pendingUserFeedback';
      case CalendarBookingModeType.modifyRejected:
        return 'modifyRejected';
      case CalendarBookingModeType.modifyAccepted:
        return 'modifyAccepted';
      case CalendarBookingModeType.bookingLocked:
        return 'bookingLocked';
      case CalendarBookingModeType.bookingRefundLocked:
        return 'bookingRefundLocked';
      case CalendarBookingModeType.bookingRefundRejected:
        return 'bookingRefundRejected';
      case CalendarBookingModeType.bookingRefundAccepted:
        return 'bookingRefundAccepted';
      case CalendarBookingModeType.bookingPartialRefundAccepted:
        return 'bookingPartialRefundAccepted';
      case CalendarBookingModeType.bookingRefundDisputed:
        return 'bookingRefundDisputed';
      case CalendarBookingModeType.bookingPaid:
        return 'bookingPaid';
      default:
        return 'unknown';
    }
  }
}