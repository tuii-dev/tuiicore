import 'package:flutter/foundation.dart';

enum EmailMessageType {
  educatorWelcome,
  educatorConnectionRequest, // DONE
  educatorBookingRejected, // DONE
  educatorPaymentReceived, // DONE
  educatorRefundRequested, // DONE
  educatorRescheduleAccepted, // DONE
  educatorRescheduleRejected, // DONE
  educatorDisputeRaised, // DONE
  learnerWelcome,
  learnerConnectionRequestAccepted, // DONE
  learnerConnectionRequestRejected, // DONE
  learnerBookingRequestReceived, // DONE
  learnerPaymentSuccessful, // DONE
  learnerRefundApproved, // DONE
  learnerRefundRejected, // DONE
  learnerLessonRescheduled, // DONE
  learnerRefundReceived, // DONE
  connectionInvitationRequest,
  connectionInvitationAccepted,
  systemSupportDisputeRaised,
  unknown,
}

extension EmailMessageTypeExtension on EmailMessageType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case EmailMessageType.educatorWelcome:
        return 'educatorWelcome'; // Done
      case EmailMessageType.educatorConnectionRequest:
        return 'educatorConnectionRequest';
      case EmailMessageType.learnerWelcome:
        return 'learnerWelcome'; // Done
      case EmailMessageType.learnerConnectionRequestAccepted:
        return 'learnerConnectionRequestAccepted';
      case EmailMessageType.learnerConnectionRequestRejected:
        return 'learnerConnectionRequestRejected';
      case EmailMessageType.learnerBookingRequestReceived:
        return 'learnerBookingRequestReceived'; // Done
      case EmailMessageType.educatorBookingRejected:
        return 'educatorBookingRejected'; // Done
      case EmailMessageType.educatorPaymentReceived:
        return 'educatorPaymentReceived'; // Done
      case EmailMessageType.learnerPaymentSuccessful:
        return 'learnerPaymentSuccessful'; // Done
      case EmailMessageType.educatorRefundRequested:
        return 'educatorRefundRequested'; // Done
      case EmailMessageType.educatorDisputeRaised:
        return 'educatorDisputeRaised';
      case EmailMessageType.learnerRefundApproved:
        return 'learnerRefundApproved'; // Done
      case EmailMessageType.learnerRefundRejected:
        return 'learnerRefundRejected'; // Done
      case EmailMessageType.learnerLessonRescheduled:
        return 'learnerLessonRescheduled'; // Done
      case EmailMessageType.learnerRefundReceived:
        return 'learnerRefundReceived'; // Done
      case EmailMessageType.educatorRescheduleAccepted:
        return 'educatorRescheduleAccepted'; // Done
      case EmailMessageType.educatorRescheduleRejected:
        return 'educatorRescheduleRejected';
      case EmailMessageType.connectionInvitationRequest:
        return 'connectionInvitationRequest'; // Done
      case EmailMessageType.connectionInvitationAccepted:
        return 'connectionInvitationAccepted'; // Done
      case EmailMessageType.systemSupportDisputeRaised:
        return 'systemSupportDisputeRaised';
      default:
        return 'unknown';
    }
  }

  EmailMessageType fromMap(String? type) {
    switch (type) {
      case 'educatorWelcome':
        return EmailMessageType.educatorWelcome;
      case 'educatorConnectionRequest':
        return EmailMessageType.educatorConnectionRequest;
      case 'learnerWelcome':
        return EmailMessageType.learnerWelcome;
      case 'learnerConnectionRequestAccepted':
        return EmailMessageType.learnerConnectionRequestAccepted;
      case 'learnerConnectionRequestRejected':
        return EmailMessageType.learnerConnectionRequestRejected;
      case 'learnerBookingRequestReceived':
        return EmailMessageType.learnerBookingRequestReceived;
      case 'educatorBookingRejected':
        return EmailMessageType.educatorBookingRejected;
      case 'educatorPaymentReceived':
        return EmailMessageType.educatorPaymentReceived;
      case 'educatorRescheduleAccepted':
        return EmailMessageType.educatorRescheduleAccepted;
      case 'educatorRescheduleRejected':
        return EmailMessageType.educatorRescheduleRejected;
      case 'educatorDisputeRaised':
        return EmailMessageType.educatorDisputeRaised;
      case 'learnerPaymentSuccessful':
        return EmailMessageType.learnerPaymentSuccessful;
      case 'educatorRefundRequested':
        return EmailMessageType.educatorRefundRequested;
      case 'learnerRefundApproved':
        return EmailMessageType.learnerRefundApproved;
      case 'learnerRefundRejected':
        return EmailMessageType.learnerRefundRejected;
      case 'learnerLessonRescheduled':
        return EmailMessageType.learnerLessonRescheduled;
      case 'learnerRefundReceived':
        return EmailMessageType.learnerRefundReceived;
      case 'connectionInvitationRequest':
        return EmailMessageType.connectionInvitationRequest; // Done
      case 'connectionInvitationAccepted':
        return EmailMessageType.connectionInvitationAccepted;
      case 'systemSupportDisputeRaised':
        return EmailMessageType.systemSupportDisputeRaised;
      default:
        return EmailMessageType.unknown;
    }
  }
}