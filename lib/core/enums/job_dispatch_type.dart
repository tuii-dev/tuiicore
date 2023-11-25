import 'package:flutter/foundation.dart';

enum JobDispatchType {
  createZoomBookings,
  healZoom400Errors,
  healZoom429Errors,
  sendCommunications,
  manageBlockChain,
  manageLessonWorkflow,
  unknown,
}

extension JobDispatchTypeExtension on JobDispatchType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case JobDispatchType.createZoomBookings:
        return 'createZoomBookings';
      case JobDispatchType.healZoom400Errors:
        return 'healZoom400Errors';
      case JobDispatchType.healZoom429Errors:
        return 'healZoom429Errors';
      case JobDispatchType.sendCommunications:
        return 'sendCommunications';
      case JobDispatchType.manageBlockChain:
        return 'manageBlockChain';
      case JobDispatchType.manageLessonWorkflow:
        return 'manageLessonWorkflow';
      default:
        return 'unknown';
    }
  }

  JobDispatchType fromMap(String? type) {
    switch (type) {
      case 'createZoomBookings':
        return JobDispatchType.createZoomBookings;
      case 'healZoom400Errors':
        return JobDispatchType.healZoom400Errors;
      case 'healZoom429Errors':
        return JobDispatchType.healZoom429Errors;
      case 'sendCommunications':
        return JobDispatchType.sendCommunications;
      case 'manageBlockChain':
        return JobDispatchType.manageBlockChain;
      case 'manageLessonWorkflow':
        return JobDispatchType.manageLessonWorkflow;
      default:
        return JobDispatchType.unknown;
    }
  }
}