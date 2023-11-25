import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/lesson_workflow_job_type.dart';
import 'package:tuiicore/core/enums/lesson_workflow_type.dart';

class LessonWorkflowPayloadModel extends Equatable {
  final LessonWorkflowType? workflowType;
  final LessonWorkflowJobType? workflowJobType;
  final String? lessonBookingId;
  final String? classroomId;
  final String? lessonId;

  const LessonWorkflowPayloadModel({
    this.workflowType,
    this.workflowJobType,
    this.lessonBookingId,
    this.classroomId,
    this.lessonId,
  });

  LessonWorkflowPayloadModel copyWith({
    LessonWorkflowType? workflowType,
    LessonWorkflowJobType? workflowJobType,
    String? lessonBookingId,
    String? classroomId,
    String? lessonId,
  }) {
    return LessonWorkflowPayloadModel(
      workflowType: workflowType ?? this.workflowType,
      workflowJobType: workflowJobType ?? this.workflowJobType,
      lessonBookingId: lessonBookingId ?? this.lessonBookingId,
      classroomId: classroomId ?? this.classroomId,
      lessonId: lessonId ?? this.lessonId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'workflowType': workflowType?.toMap(),
      'workflowJobType': workflowJobType?.toMap(),
      'lessonBookingId': lessonBookingId,
      'classroomId': classroomId,
      'lessonId': lessonId,
    };
  }

  factory LessonWorkflowPayloadModel.fromMap(Map<String, dynamic> map) {
    const staticWorkflowType = LessonWorkflowType.unknown;
    const staticWorkflowJobType = LessonWorkflowJobType.unknown;

    return LessonWorkflowPayloadModel(
      workflowType: map['workflowType'] != null
          ? staticWorkflowType.fromMap(map['workflowType'])
          : null,
      workflowJobType: map['workflowJobType'] != null
          ? staticWorkflowJobType.fromMap(map['workflowJobType'])
          : null,
      lessonBookingId: map['lessonBookingId'],
      classroomId: map['classroomId'],
      lessonId: map['lessonId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonWorkflowPayloadModel.fromJson(String source) =>
      LessonWorkflowPayloadModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LessonWorkflowPayloadModel(workflowType: $workflowType, workflowJobType: $workflowJobType, lessonBookingId: $lessonBookingId, classroomId: $classroomId, lessonId: $lessonId)';
  }

  @override
  List<Object?> get props =>
      [workflowType, workflowJobType, lessonBookingId, classroomId, lessonId];
}