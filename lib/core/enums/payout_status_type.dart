import 'package:flutter/foundation.dart';

enum PayoutStatusType {
  depositScheduled,
  deposited,
  failed,
  unknown,
}

extension PayoutStatusTypeExtension on PayoutStatusType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case PayoutStatusType.failed:
        return 'failed';
      case PayoutStatusType.deposited:
        return 'deposited';
      case PayoutStatusType.unknown:
        return 'unknown';
      default:
        return 'depositScheduled';
    }
  }

  PayoutStatusType fromMap(String? type) {
    switch (type) {
      case 'failed':
        return PayoutStatusType.failed;
      case 'deposited':
        return PayoutStatusType.deposited;
      case 'unknown':
        return PayoutStatusType.unknown;
      default:
        return PayoutStatusType.depositScheduled;
    }
  }

  String toDisplay() {
    switch (this) {
      case PayoutStatusType.failed:
        return 'Failed';
      case PayoutStatusType.deposited:
        return 'Deposited';
      case PayoutStatusType.unknown:
        return 'Unknown';
      default:
        return 'Scheduled';
    }
  }

  PayoutStatusType fromDisplay(String? type) {
    switch (type) {
      case 'Failed':
        return PayoutStatusType.failed;
      case 'Deposited':
        return PayoutStatusType.deposited;
      case 'Unknown':
        return PayoutStatusType.unknown;
      default:
        return PayoutStatusType.depositScheduled;
    }
  }
}