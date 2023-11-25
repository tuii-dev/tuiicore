import 'package:flutter/foundation.dart';

enum SmsMessageType {
  educatorWelcome,
  learnerWelcome,
  learnerBookingRequestReceived,
  educatorBookingRejected,
  educatorPaymentReceived,
  learnerPaymentSuccessful,
  educatorRefundRequested,
  learnerRefundApproved,
  learnerRefundRejected,
  unknown,
}

extension SmsMessageTypeExtension on SmsMessageType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case SmsMessageType.educatorWelcome:
        return 'educatorWelcome';
      case SmsMessageType.learnerWelcome:
        return 'learnerWelcome';
      case SmsMessageType.learnerBookingRequestReceived:
        return 'learnerBookingRequestReceived';
      case SmsMessageType.educatorBookingRejected:
        return 'educatorBookingRejected';
      case SmsMessageType.educatorPaymentReceived:
        return 'educatorPaymentReceived';
      case SmsMessageType.learnerPaymentSuccessful:
        return 'learnerPaymentSuccessful';
      case SmsMessageType.educatorRefundRequested:
        return 'educatorRefundRequested';
      case SmsMessageType.learnerRefundApproved:
        return 'learnerRefundApproved';
      case SmsMessageType.learnerRefundRejected:
        return 'learnerRefundRejected';
      default:
        return 'unknown';
    }
  }

  SmsMessageType fromMap(String? type) {
    switch (type) {
      case 'educatorWelcome':
        return SmsMessageType.educatorWelcome;
      case 'learnerWelcome':
        return SmsMessageType.learnerWelcome;
      case 'learnerBookingRequestReceived':
        return SmsMessageType.learnerBookingRequestReceived;
      case 'educatorBookingRejected':
        return SmsMessageType.educatorBookingRejected;
      case 'educatorPaymentReceived':
        return SmsMessageType.educatorPaymentReceived;
      case 'learnerPaymentSuccessful':
        return SmsMessageType.learnerPaymentSuccessful;
      case 'educatorRefundRequested':
        return SmsMessageType.educatorRefundRequested;
      case 'learnerRefundApproved':
        return SmsMessageType.learnerRefundApproved;
      case 'learnerRefundRejected':
        return SmsMessageType.learnerRefundRejected;
      default:
        return SmsMessageType.unknown;
    }
  }
}