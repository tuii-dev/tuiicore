import 'package:flutter/foundation.dart';

enum BeaconCommandType {
  config,
  init,
  identify,
  open,
  close,
  toggle,
  search,
  suggest,
  article,
  navigate,
  prefill,
  reset,
  logout,
  destroy,
  unknown,
}

extension BeaconCommandTypeExtension on BeaconCommandType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case BeaconCommandType.config:
        return 'config';
      case BeaconCommandType.init:
        return 'init';
      case BeaconCommandType.identify:
        return 'identify';
      case BeaconCommandType.open:
        return 'open';
      case BeaconCommandType.close:
        return 'close';
      case BeaconCommandType.toggle:
        return 'toggle';
      case BeaconCommandType.search:
        return 'search';
      case BeaconCommandType.suggest:
        return 'suggest';
      case BeaconCommandType.article:
        return 'article';
      case BeaconCommandType.navigate:
        return 'navigate';
      case BeaconCommandType.prefill:
        return 'prefill';
      case BeaconCommandType.reset:
        return 'reset';
      case BeaconCommandType.logout:
        return 'logout';
      case BeaconCommandType.destroy:
        return 'destroy';
      default:
        return 'unknown';
    }
  }

  BeaconCommandType fromMap(String? type) {
    switch (type) {
      case 'config':
        return BeaconCommandType.config;
      case 'init':
        return BeaconCommandType.init;
      case 'identify':
        return BeaconCommandType.identify;
      case 'open':
        return BeaconCommandType.open;
      case 'close':
        return BeaconCommandType.close;
      case 'toggle':
        return BeaconCommandType.toggle;
      case 'search':
        return BeaconCommandType.search;
      case 'suggest':
        return BeaconCommandType.suggest;
      case 'article':
        return BeaconCommandType.article;
      case 'navigate':
        return BeaconCommandType.navigate;
      case 'prefill':
        return BeaconCommandType.prefill;
      case 'reset':
        return BeaconCommandType.reset;
      case 'logout':
        return BeaconCommandType.logout;
      case 'destroy':
        return BeaconCommandType.destroy;
      default:
        return BeaconCommandType.unknown;
    }
  }
}