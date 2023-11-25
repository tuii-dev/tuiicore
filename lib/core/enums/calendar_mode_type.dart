import 'package:flutter/foundation.dart';

enum CalendarModeType {
  passive,
  passiveWithFocus,
  rescheduling,
  isolatedRescheduling,
  newBooking,
  // bookingConfirmationRequested,
  // pendingUserFeedback,
  modifyRejected,
  modifyAccepted,
  unknown
}

extension CalendarModeTypeExtension on CalendarModeType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case CalendarModeType.passive:
        return 'passive';
      case CalendarModeType.passiveWithFocus:
        return 'passiveWithFocus';
      case CalendarModeType.newBooking:
        return 'newBooking';
      case CalendarModeType.rescheduling:
        return 'rescheduling';
      case CalendarModeType.isolatedRescheduling:
        return 'isolatedRescheduling';
      // case CalendarModeType.bookingConfirmationRequested:
      //   return 'bookingConfirmationRequested';
      // case CalendarModeType.pendingUserFeedback:
      //   return 'pendingUserFeedback';
      case CalendarModeType.modifyRejected:
        return 'modifyRejected';
      case CalendarModeType.modifyAccepted:
        return 'modifyAccepted';
      default:
        return 'unknown';
    }
  }
}