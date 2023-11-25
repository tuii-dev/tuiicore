import 'package:flutter/foundation.dart';

enum NotificationType {
  connectionRequested,
  connectionAccepted,
  connectionRejected,
  parentConnectionRequested,
  parentConnectionAccepted,
  // parentConnectionRejected,
  tutorConnectionAccepted,
  bookingConfirmationRequested,
  bookingConfirmationAccepted,
  bookingConfirmationRejected,
  bookingConfirmationCanceled,
  bookingRefundRequested,
  bookingRefundAccepted,
  bookingRefundRejected,
  bookingDisputeRaised,
  tutorRescheduledLesson,
  stripeProductUpdateNotification,
  stripeProductDeleteNotification,
  zoomErrorResetTokenRequired,
  zoomApiConstraintsExceeded,
  unknown
}

extension NotificationTypeExtension on NotificationType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case NotificationType.connectionRequested:
        return 'ConnectionRequested';
      case NotificationType.connectionAccepted:
        return 'ConnectionAccepted';
      case NotificationType.connectionRejected:
        return 'ConnectionRejected';
      case NotificationType.parentConnectionRequested:
        return 'ParentConnectionRequested';
      case NotificationType.parentConnectionAccepted:
        return 'ParentConnectionAccepted';
      // case NotificationType.parentConnectionRejected:
      //   return 'ParentConnectionRejected';
      case NotificationType.tutorConnectionAccepted:
        return 'TutorConnectionRejected';
      case NotificationType.bookingConfirmationRequested:
        return 'BookingConfirmationRequested';
      case NotificationType.bookingConfirmationAccepted:
        return 'BookingConfirmationAccepted';
      case NotificationType.bookingConfirmationRejected:
        return 'BookingConfirmationRejected';
      case NotificationType.bookingConfirmationCanceled:
        return 'BookingConfirmationCanceled';
      case NotificationType.bookingRefundRequested:
        return 'BookingRefundRequested';
      case NotificationType.bookingRefundAccepted:
        return 'BookingRefundAccepted';
      case NotificationType.bookingRefundRejected:
        return 'BookingRefundRejected';
      case NotificationType.bookingDisputeRaised:
        return 'BookingDisputeRaised';
      case NotificationType.tutorRescheduledLesson:
        return 'TutorRescheduledLesson';
      case NotificationType.stripeProductUpdateNotification:
        return 'StripeProductUpdateNotification';
      case NotificationType.stripeProductDeleteNotification:
        return 'StripeProductDeleteNotification';
      case NotificationType.zoomErrorResetTokenRequired:
        return 'ZoomErrorResetTokenRequired';
      case NotificationType.zoomApiConstraintsExceeded:
        return 'ZoomApiConstraintsExceeded';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case NotificationType.connectionRequested:
        return 'connectionRequested';
      case NotificationType.connectionAccepted:
        return 'connectionAccepted';
      case NotificationType.connectionRejected:
        return 'connectionRejected';
      case NotificationType.parentConnectionRequested:
        return 'parentConnectionRequested';
      case NotificationType.parentConnectionAccepted:
        return 'parentConnectionAccepted';
      // case NotificationType.parentConnectionRejected:
      //   return 'parentConnectionRejected';
      case NotificationType.tutorConnectionAccepted:
        return 'tutorConnectionAccepted';
      case NotificationType.bookingConfirmationRequested:
        return 'bookingConfirmationRequested';
      case NotificationType.bookingConfirmationAccepted:
        return 'bookingConfirmationAccepted';
      case NotificationType.bookingConfirmationRejected:
        return 'bookingConfirmationRejected';
      case NotificationType.bookingConfirmationCanceled:
        return 'bookingConfirmationCanceled';
      case NotificationType.bookingRefundRequested:
        return 'bookingRefundRequested';
      case NotificationType.bookingRefundAccepted:
        return 'bookingRefundAccepted';
      case NotificationType.bookingRefundRejected:
        return 'bookingRefundRejected';
      case NotificationType.bookingDisputeRaised:
        return 'bookingDisputeRaised';
      case NotificationType.tutorRescheduledLesson:
        return 'tutorRescheduledLesson';
      case NotificationType.stripeProductUpdateNotification:
        return 'stripeProductUpdateNotification';
      case NotificationType.stripeProductDeleteNotification:
        return 'stripeProductDeleteNotification';
      case NotificationType.zoomErrorResetTokenRequired:
        return 'zoomErrorResetTokenRequired';
      case NotificationType.zoomApiConstraintsExceeded:
        return 'zoomApiConstraintsExceeded';
      default:
        return 'unknown';
    }
  }

  NotificationType fromMap(String? type) {
    switch (type) {
      case 'connectionRequested':
        return NotificationType.connectionRequested;
      case 'connectionAccepted':
        return NotificationType.connectionAccepted;
      case 'connectionRejected':
        return NotificationType.connectionRejected;
      case 'parentConnectionRequested':
        return NotificationType.parentConnectionRequested;
      case 'parentConnectionAccepted':
        return NotificationType.parentConnectionAccepted;
      // case 'parentConnectionRejected':
      //   return NotificationType.parentConnectionRejected;
      case 'tutorConnectionAccepted':
        return NotificationType.tutorConnectionAccepted;
      case 'bookingConfirmationRequested':
        return NotificationType.bookingConfirmationRequested;
      case 'bookingConfirmationAccepted':
        return NotificationType.bookingConfirmationAccepted;
      case 'bookingConfirmationRejected':
        return NotificationType.bookingConfirmationRejected;
      case 'bookingConfirmationCanceled':
        return NotificationType.bookingConfirmationCanceled;
      case 'bookingRefundRequested':
        return NotificationType.bookingRefundRequested;
      case 'bookingRefundAccepted':
        return NotificationType.bookingRefundAccepted;
      case 'bookingRefundRejected':
        return NotificationType.bookingRefundRejected;
      case 'bookingDisputeRaised':
        return NotificationType.bookingDisputeRaised;
      case 'tutorRescheduledLesson':
        return NotificationType.tutorRescheduledLesson;
      case 'stripeProductUpdateNotification':
        return NotificationType.stripeProductUpdateNotification;
      case 'stripeProductDeleteNotification':
        return NotificationType.stripeProductDeleteNotification;
      case 'zoomErrorResetTokenRequired':
        return NotificationType.zoomErrorResetTokenRequired;
      case 'zoomApiConstraintsExceeded':
        return NotificationType.zoomApiConstraintsExceeded;
      default:
        return NotificationType.unknown;
    }
  }

  NotificationType fromDisplay(String display) {
    switch (display) {
      case 'ConnectionRequested':
        return NotificationType.connectionRequested;
      case 'ConnectionAccepted':
        return NotificationType.connectionAccepted;
      case 'ConnectionRejected':
        return NotificationType.connectionRejected;
      case 'ParentConnectionRequested':
        return NotificationType.parentConnectionRequested;
      case 'ParentConnectionAccepted':
        return NotificationType.parentConnectionAccepted;
      // case 'ParentConnectionRejected':
      //   return NotificationType.parentConnectionRejected;
      case 'TutorConnectionAccepted':
        return NotificationType.tutorConnectionAccepted;
      case 'BookingConfirmationRequested':
        return NotificationType.bookingConfirmationRequested;
      case 'BookingConfirmationAccepted':
        return NotificationType.bookingConfirmationAccepted;
      case 'BookingConfirmationRejected':
        return NotificationType.bookingConfirmationRejected;
      case 'BookingConfirmationCanceled':
        return NotificationType.bookingConfirmationCanceled;
      case 'BookingRefundRequested':
        return NotificationType.bookingRefundRequested;
      case 'BookingRefundAccepted':
        return NotificationType.bookingRefundAccepted;
      case 'BookingRefundRejected':
        return NotificationType.bookingRefundRejected;
      case 'BookingDisputeRaised':
        return NotificationType.bookingDisputeRaised;
      case 'TutorRescheduledLesson':
        return NotificationType.tutorRescheduledLesson;
      case 'StripeProductUpdateNotification':
        return NotificationType.stripeProductUpdateNotification;
      case 'StripeProductDeleteNotification':
        return NotificationType.stripeProductDeleteNotification;
      case 'ZoomErrorResetTokenRequired':
        return NotificationType.zoomErrorResetTokenRequired;
      case 'ZoomApiConstraintsExceeded':
        return NotificationType.zoomApiConstraintsExceeded;
      default:
        return NotificationType.unknown;
    }
  }
}