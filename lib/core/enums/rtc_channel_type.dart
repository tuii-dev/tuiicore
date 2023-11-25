import 'package:flutter/foundation.dart';

enum RtcChannelType { messaging, voice, video, livestream, whiteboard }

extension RtcChannelTypeExtension on RtcChannelType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case RtcChannelType.messaging:
        return 'Messaging';
      case RtcChannelType.voice:
        return 'Voice';
      case RtcChannelType.video:
        return 'Video';
      case RtcChannelType.livestream:
        return 'Livestream';
      default:
        return 'Whiteboard';
    }
  }

  String toMap() {
    switch (this) {
      case RtcChannelType.messaging:
        return 'messaging';
      case RtcChannelType.voice:
        return 'voice';
      case RtcChannelType.video:
        return 'video';
      case RtcChannelType.livestream:
        return 'livestream';
      default:
        return 'whiteboard';
    }
  }

  RtcChannelType fromMap(String? type) {
    switch (type) {
      case 'messaging':
        return RtcChannelType.messaging;
      case 'voice':
        return RtcChannelType.voice;
      case 'whiteboard':
        return RtcChannelType.whiteboard;
      case 'livestream':
        return RtcChannelType.livestream;
      default:
        return RtcChannelType.video;
    }
  }

  RtcChannelType fromDisplay(String display) {
    switch (display) {
      case 'Messaging':
        return RtcChannelType.messaging;
      case 'Voice':
        return RtcChannelType.voice;
      case 'Video':
        return RtcChannelType.video;
      case 'Livestream':
        return RtcChannelType.livestream;
      default:
        return RtcChannelType.whiteboard;
    }
  }
}