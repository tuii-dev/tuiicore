import 'package:flutter/foundation.dart';

enum ChannelType {
  app,
  beta,
  alpha,
  dev,
}

extension ChannelTypeExtension on ChannelType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case ChannelType.app:
        return 'app';
      case ChannelType.beta:
        return 'beta';
      case ChannelType.alpha:
        return 'alpha';
      default:
        return 'dev';
    }
  }

  ChannelType fromMap(String? type) {
    switch (type) {
      case 'app':
        return ChannelType.app;
      case 'beta':
        return ChannelType.beta;
      case 'alpha':
        return ChannelType.alpha;
      default:
        return ChannelType.dev;
    }
  }
}