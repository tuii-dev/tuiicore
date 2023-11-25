import 'package:flutter/foundation.dart';

enum BeaconArticleType {
  gettingPaid,
  fees,
  bookings,
  payouts,
  howToUseZoom,
  unknown
}

extension BeaconArticleTypeExtension on BeaconArticleType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case BeaconArticleType.gettingPaid:
        return '6513ae94eeaab711979eac15';
      case BeaconArticleType.fees:
        return '6513aee0aed9c75bab284479';
      case BeaconArticleType.bookings:
        return '6513b7dfeeaab711979eac1e';
      case BeaconArticleType.payouts:
        return '6513aef3aed9c75bab28447a';
      case BeaconArticleType.howToUseZoom:
        return '65263cfc44252e4a513e9854';
      default:
        return 'unknown';
    }
  }

  BeaconArticleType fromMap(String? type) {
    switch (type) {
      case '6513ae94eeaab711979eac15':
        return BeaconArticleType.gettingPaid;
      case '6513aee0aed9c75bab284479':
        return BeaconArticleType.fees;
      case '6513b7dfeeaab711979eac1e':
        return BeaconArticleType.bookings;
      case '6513aef3aed9c75bab28447a':
        return BeaconArticleType.payouts;
      case '65263cfc44252e4a513e9854':
        return BeaconArticleType.howToUseZoom;
      default:
        return BeaconArticleType.unknown;
    }
  }
}