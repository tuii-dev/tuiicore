import 'package:flutter/foundation.dart';

enum ResourceType {
  image,
  profileImage,
  pdf,
  thumbnail,
  youtube,
  mp3,
  studioPolicy,
  unknown
}

extension ResourceTypeExtension on ResourceType {
  String get name {
    return describeEnum(this);
  }

  String get display {
    switch (this) {
      case ResourceType.image:
        return 'Image';
      case ResourceType.profileImage:
        return 'ProfileImage';
      case ResourceType.thumbnail:
        return 'Thumbnail';
      case ResourceType.pdf:
        return 'PDF';
      case ResourceType.youtube:
        return 'YouTube';
      case ResourceType.mp3:
        return 'MP3';
      case ResourceType.studioPolicy:
        return 'StudioPolicy';
      default:
        return 'Unknown';
    }
  }

  String toMap() {
    switch (this) {
      case ResourceType.image:
        return 'image';
      case ResourceType.profileImage:
        return 'profileImage';
      case ResourceType.thumbnail:
        return 'thumbnail';
      case ResourceType.pdf:
        return 'pdf';
      case ResourceType.youtube:
        return 'youtube';
      case ResourceType.mp3:
        return 'mp3';
      case ResourceType.studioPolicy:
        return 'studioPolicy';
      default:
        return 'unknown';
    }
  }

  ResourceType fromMap(String? type) {
    switch (type) {
      case 'image':
        return ResourceType.image;
      case 'profileImage':
        return ResourceType.profileImage;
      case 'thumbnail':
        return ResourceType.thumbnail;
      case 'pdf':
        return ResourceType.pdf;
      case 'youtube':
        return ResourceType.youtube;
      case 'mp3':
        return ResourceType.mp3;
      case 'studioPolicy':
        return ResourceType.studioPolicy;
      default:
        return ResourceType.unknown;
    }
  }

  ResourceType fromDisplay(String display) {
    switch (display) {
      case 'Image':
        return ResourceType.image;
      case 'ProfileImage':
        return ResourceType.profileImage;
      case 'Thumbnail':
        return ResourceType.thumbnail;
      case 'PDF':
        return ResourceType.pdf;
      case 'YouTube':
        return ResourceType.youtube;
      case 'MP3':
        return ResourceType.mp3;
      case 'StudioPolicy':
        return ResourceType.studioPolicy;
      default:
        return ResourceType.unknown;
    }
  }
}