import 'package:flutter/foundation.dart';

enum BlockChainEntityType {
  bookings,
  classrooms,
  communications,
  connections,
  lessonBookings,
  lessonProducts,
  lessons,
  resources,
  resourceLibrary,
  tasks,
  users,
  chats,
  emails,
  notifications,
}

extension BlockChainEntityTypeExtension on BlockChainEntityType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case BlockChainEntityType.bookings:
        return 'bookings';
      case BlockChainEntityType.classrooms:
        return 'classrooms';
      case BlockChainEntityType.communications:
        return 'communications';
      case BlockChainEntityType.connections:
        return 'connections';
      case BlockChainEntityType.lessonBookings:
        return 'lessonBookings';
      case BlockChainEntityType.lessonProducts:
        return 'lessonProducts';
      case BlockChainEntityType.lessons:
        return 'lessons';
      case BlockChainEntityType.resources:
        return 'resources';
      case BlockChainEntityType.resourceLibrary:
        return 'resourceLibrary';
      case BlockChainEntityType.tasks:
        return 'tasks';
      case BlockChainEntityType.chats:
        return 'chats';
      case BlockChainEntityType.emails:
        return 'emails';
      case BlockChainEntityType.notifications:
        return 'notifications';
      default:
        return 'users';
    }
  }

  BlockChainEntityType fromMap(String? type) {
    switch (type) {
      case 'bookings':
        return BlockChainEntityType.bookings;
      case 'classrooms':
        return BlockChainEntityType.classrooms;
      case 'communications':
        return BlockChainEntityType.communications;
      case 'connections':
        return BlockChainEntityType.connections;
      case 'lessonBookings':
        return BlockChainEntityType.lessonBookings;
      case 'lessonProducts':
        return BlockChainEntityType.lessonProducts;
      case 'resourceLibrary':
        return BlockChainEntityType.resourceLibrary;
      case 'lessons':
        return BlockChainEntityType.lessons;
      case 'resources':
        return BlockChainEntityType.resources;
      case 'tasks':
        return BlockChainEntityType.tasks;
      case 'chats':
        return BlockChainEntityType.chats;
      case 'emails':
        return BlockChainEntityType.emails;
      case 'notifications':
        return BlockChainEntityType.notifications;
      default:
        return BlockChainEntityType.users;
    }
  }
}