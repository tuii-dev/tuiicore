import 'package:flutter/foundation.dart';

enum RtcProviderType { jitsi, zoom }

extension RtcProviderTypeExtension on RtcProviderType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case RtcProviderType.jitsi:
        return 'Jitsi';
      default:
        return 'Zoom';
    }
  }

  String toMap() {
    switch (this) {
      case RtcProviderType.jitsi:
        return 'jitsi';
      default:
        return 'zoom';
    }
  }

  RtcProviderType fromMap(String? type) {
    switch (type) {
      case 'jitsi':
        return RtcProviderType.jitsi;
      default:
        return RtcProviderType.zoom;
    }
  }

  RtcProviderType fromDisplay(String display) {
    switch (display) {
      case 'Jitsi':
        return RtcProviderType.jitsi;
      default:
        return RtcProviderType.zoom;
    }
  }
}