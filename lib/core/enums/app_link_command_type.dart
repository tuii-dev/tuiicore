import 'package:flutter/foundation.dart';

enum AppLinkCommandType { connect, directConnect, unknown }

extension AppLinkCommandTypeExtension on AppLinkCommandType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case AppLinkCommandType.connect:
        return 'Connect';
      case AppLinkCommandType.directConnect:
        return 'Direct Connect';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case AppLinkCommandType.connect:
        return 'connect';
      case AppLinkCommandType.directConnect:
        return 'directconnect';
      default:
        return 'unknown';
    }
  }

  AppLinkCommandType fromMap(String? type) {
    switch (type) {
      case 'connect':
        return AppLinkCommandType.connect;
      case 'directconnect':
        return AppLinkCommandType.directConnect;
      default:
        return AppLinkCommandType.unknown;
    }
  }

  AppLinkCommandType fromDisplay(String display) {
    switch (display) {
      case 'Connect':
        return AppLinkCommandType.connect;
      case 'Direct Connect':
        return AppLinkCommandType.directConnect;
      default:
        return AppLinkCommandType.unknown;
    }
  }
}