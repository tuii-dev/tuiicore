import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:tuiiweb/core/enums/enums.dart';
import 'package:tuiiweb/core/enums/lesson_workflow_type.dart';

class LessonIndexModel extends Equatable {
  final String? id;
  final String? tutorId;
  final String? studentId;
  final bool? studentHasCustodian;
  final String? studentCustodianId;
  final String? lessonBookingId;
  final String? bookingId;
  final String? jobBookingId;
  final String? subjectId;
  final DateTime? startDate;
  final DateTime? originalStartTime;
  final int? lessonLength;
  final String? lessonTitle;
  final LessonDeliveryType? lessonDelivery;
  final bool? lessonRefunded;
  final bool? lessonDisputed;
  final bool? lessonCompleted;
  final bool? lessonPaidOut;
  final bool? lessonPendingPayOut;
  final DateTime? scheduledPayOutDate;
  final DateTime? lessonPaidOutDate;
  final AttendanceStatusType? attendanceStatusType;
  final double? costOfLesson;
  final String? stripePriceId;
  final RtcChannelType? rtcChannelType;
  final RtcProviderType? rtcProviderType;
  final String? rtcConferenceLink;
  final DocumentReference? classroomRef;
  final DocumentReference? lessonRef;
  final DocumentReference? studentRef;
  final DocumentReference? tutorRef;
  final String? zoomStartUrl;
  final String? zoomJoinUrl;
  final dynamic zoomMeetingId;
  final int? zoomMeetingCreationIndex;
  final bool? isPendingSubsequentApproval;
  final List<LessonWorkflowType>? currentWorkflows;

  const LessonIndexModel({
    this.id,
    this.tutorId,
    this.studentId,
    this.studentHasCustodian,
    this.studentCustodianId,
    this.lessonBookingId,
    this.bookingId,
    this.jobBookingId,
    this.subjectId,
    this.startDate,
    this.originalStartTime,
    this.lessonLength,
    this.lessonTitle,
    this.lessonDelivery,
    this.lessonRefunded = false,
    this.lessonDisputed = false,
    this.lessonCompleted = false,
    this.lessonPaidOut = false,
    this.lessonPaidOutDate,
    this.lessonPendingPayOut = false,
    this.scheduledPayOutDate,
    this.attendanceStatusType = AttendanceStatusType.pending,
    this.costOfLesson,
    this.stripePriceId,
    this.classroomRef,
    this.lessonRef,
    this.studentRef,
    this.tutorRef,
    this.rtcChannelType,
    this.rtcProviderType,
    this.rtcConferenceLink,
    this.zoomStartUrl,
    this.zoomJoinUrl,
    this.zoomMeetingId,
    this.zoomMeetingCreationIndex,
    this.isPendingSubsequentApproval = false,
    this.currentWorkflows = const [],
  });

  @override
  List<Object?> get props {
    return [
      id,
      tutorId,
      studentId,
      studentHasCustodian,
      studentCustodianId,
      lessonBookingId,
      bookingId,
      jobBookingId,
      subjectId,
      startDate,
      originalStartTime,
      lessonLength,
      lessonTitle,
      lessonDelivery,
      lessonRefunded,
      lessonDisputed,
      lessonCompleted,
      lessonPaidOut,
      lessonPaidOutDate,
      lessonPendingPayOut,
      scheduledPayOutDate,
      attendanceStatusType,
      costOfLesson,
      stripePriceId,
      classroomRef,
      lessonRef,
      studentRef,
      tutorRef,
      rtcChannelType,
      rtcProviderType,
      rtcConferenceLink,
      zoomStartUrl,
      zoomJoinUrl,
      zoomMeetingId,
      zoomMeetingCreationIndex,
      isPendingSubsequentApproval,
      currentWorkflows,
    ];
  }

  LessonIndexModel copyWith({
    String? id,
    String? tutorId,
    String? studentId,
    bool? studentHasCustodian,
    String? studentCustodianId,
    String? lessonBookingId,
    String? bookingId,
    String? jobBookingId,
    String? subjectId,
    DateTime? startDate,
    DateTime? originalStartTime,
    int? lessonLength,
    String? lessonTitle,
    double? costOfLesson,
    String? stripePriceId,
    LessonDeliveryType? lessonDelivery,
    bool? lessonRefunded,
    bool? lessonDisputed,
    bool? lessonCompleted,
    bool? lessonPaidOut,
    DateTime? lessonPaidOutDate,
    bool? lessonPendingPayOut,
    DateTime? scheduledPayOutDate,
    AttendanceStatusType? attendanceStatusType,
    DocumentReference? classroomRef,
    DocumentReference? lessonRef,
    DocumentReference? studentRef,
    DocumentReference? tutorRef,
    RtcChannelType? rtcChannelType,
    RtcProviderType? rtcProviderType,
    String? rtcConferenceLink,
    String? zoomStartUrl,
    String? zoomJoinUrl,
    dynamic zoomMeetingId,
    int? zoomMeetingCreationIndex,
    bool? isPendingSubsequentApproval,
    List<LessonWorkflowType>? currentWorkflows,
  }) {
    return LessonIndexModel(
      id: id ?? this.id,
      tutorId: tutorId ?? this.tutorId,
      studentId: studentId ?? this.studentId,
      studentHasCustodian: studentHasCustodian ?? this.studentHasCustodian,
      studentCustodianId: studentCustodianId ?? this.studentCustodianId,
      lessonBookingId: lessonBookingId ?? this.lessonBookingId,
      bookingId: bookingId ?? this.bookingId,
      jobBookingId: jobBookingId ?? this.jobBookingId,
      subjectId: subjectId ?? this.subjectId,
      startDate: startDate ?? this.startDate,
      originalStartTime: originalStartTime ?? this.originalStartTime,
      lessonLength: lessonLength ?? this.lessonLength,
      lessonTitle: lessonTitle ?? this.lessonTitle,
      lessonDelivery: lessonDelivery ?? this.lessonDelivery,
      lessonRefunded: lessonRefunded ?? this.lessonRefunded,
      lessonDisputed: lessonDisputed ?? this.lessonDisputed,
      lessonCompleted: lessonCompleted ?? this.lessonCompleted,
      lessonPaidOut: lessonPaidOut ?? this.lessonPaidOut,
      lessonPaidOutDate: lessonPaidOutDate ?? this.lessonPaidOutDate,
      lessonPendingPayOut: lessonPendingPayOut ?? this.lessonPendingPayOut,
      scheduledPayOutDate: scheduledPayOutDate ?? this.scheduledPayOutDate,
      attendanceStatusType: attendanceStatusType ?? this.attendanceStatusType,
      costOfLesson: costOfLesson ?? this.costOfLesson,
      stripePriceId: stripePriceId ?? this.stripePriceId,
      classroomRef: classroomRef ?? this.classroomRef,
      lessonRef: lessonRef ?? this.lessonRef,
      studentRef: studentRef ?? this.studentRef,
      tutorRef: tutorRef ?? this.tutorRef,
      rtcChannelType: rtcChannelType ?? this.rtcChannelType,
      rtcProviderType: rtcProviderType ?? this.rtcProviderType,
      rtcConferenceLink: rtcConferenceLink ?? this.rtcConferenceLink,
      zoomStartUrl: zoomStartUrl ?? this.zoomStartUrl,
      zoomJoinUrl: zoomJoinUrl ?? this.zoomJoinUrl,
      zoomMeetingId: zoomMeetingId ?? this.zoomMeetingId,
      zoomMeetingCreationIndex:
          zoomMeetingCreationIndex ?? this.zoomMeetingCreationIndex,
      isPendingSubsequentApproval:
          isPendingSubsequentApproval ?? this.isPendingSubsequentApproval,
      currentWorkflows: currentWorkflows ?? this.currentWorkflows,
    );
  }

  LessonIndexModel clone() {
    return LessonIndexModel(
      id: id,
      tutorId: tutorId,
      lessonBookingId: lessonBookingId,
      bookingId: bookingId,
      jobBookingId: jobBookingId,
      studentId: studentId,
      subjectId: subjectId,
      studentHasCustodian: studentHasCustodian,
      studentCustodianId: studentCustodianId,
      startDate: startDate,
      originalStartTime: originalStartTime,
      lessonLength: lessonLength,
      lessonTitle: lessonTitle,
      lessonDelivery: lessonDelivery,
      lessonRefunded: lessonRefunded,
      lessonDisputed: lessonDisputed,
      lessonCompleted: lessonCompleted,
      lessonPaidOut: lessonPaidOut,
      lessonPaidOutDate: lessonPaidOutDate,
      lessonPendingPayOut: lessonPendingPayOut,
      scheduledPayOutDate: scheduledPayOutDate,
      attendanceStatusType: attendanceStatusType,
      costOfLesson: costOfLesson,
      stripePriceId: stripePriceId,
      classroomRef: classroomRef,
      lessonRef: lessonRef,
      studentRef: studentRef,
      tutorRef: tutorRef,
      rtcChannelType: rtcChannelType,
      rtcProviderType: rtcProviderType,
      rtcConferenceLink: rtcConferenceLink,
      zoomStartUrl: zoomStartUrl,
      zoomJoinUrl: zoomJoinUrl,
      zoomMeetingId: zoomMeetingId,
      zoomMeetingCreationIndex: zoomMeetingCreationIndex,
      isPendingSubsequentApproval: isPendingSubsequentApproval,
      currentWorkflows: currentWorkflows,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tutorId': tutorId,
      'studentId': studentId,
      'lessonBookingId': lessonBookingId,
      'bookingId': bookingId,
      'jobBookingId': jobBookingId,
      'subjectId': subjectId,
      'studentHasCustodian': studentHasCustodian,
      'studentCustodianId': studentCustodianId,
      'startDate': startDate!.toUtc().millisecondsSinceEpoch,
      'originalStartTime': originalStartTime?.toUtc().millisecondsSinceEpoch,
      'lessonLength': lessonLength,
      'lessonTitle': lessonTitle,
      'lessonDelivery': lessonDelivery?.toMap(),
      'lessonRefunded': lessonRefunded ?? false,
      'lessonDisputed': lessonDisputed ?? false,
      'lessonCompleted': lessonCompleted ?? false,
      'lessonPaidOut': lessonPaidOut ?? false,
      'lessonPaidOutDate': lessonPaidOutDate?.toUtc().millisecondsSinceEpoch,
      'lessonPendingPayOut': lessonPendingPayOut,
      'scheduledPayOutDate':
          scheduledPayOutDate?.toUtc().millisecondsSinceEpoch,
      'attendanceStatusType': attendanceStatusType != null
          ? attendanceStatusType!.toMap()
          : AttendanceStatusType.pending.toMap(),
      'costOfLesson': costOfLesson,
      'stripePriceId': stripePriceId,
      'classroomRef': classroomRef,
      'lessonRef': lessonRef,
      'studentRef': studentRef,
      'tutorRef': tutorRef,
      'rtcChannelType': rtcChannelType != null
          ? rtcChannelType!.toMap()
          : RtcChannelType.video.toMap(),
      'rtcProviderType': rtcProviderType != null
          ? rtcProviderType!.toMap()
          : RtcProviderType.zoom.toMap(),
      'rtcConferenceLink': rtcConferenceLink,
      'zoomStartUrl': zoomStartUrl,
      'zoomJoinUrl': zoomJoinUrl,
      'zoomMeetingId': zoomMeetingId,
      'zoomMeetingCreationIndex': zoomMeetingCreationIndex,
      'isPendingSubsequentApproval': isPendingSubsequentApproval ?? false,
      'currentWorkflows': currentWorkflows != null
          ? currentWorkflows!.map((cw) => cw.toMap()).toList()
          : [],
    };
  }

  factory LessonIndexModel.fromMap(Map<String, dynamic> map) {
    const staticLessonDeliveryType = LessonDeliveryType.unknown;
    const staticAttendanceStatusType = AttendanceStatusType.unknown;
    const staticRtcChannelType = RtcChannelType.video;
    const staticRtcProviderType = RtcProviderType.zoom;
    const staticLessonWorkflowType = LessonWorkflowType.unknown;

    return LessonIndexModel(
      id: map['id'] ?? '',
      tutorId: map['tutorId'] ?? '',
      studentId: map['studentId'] ?? '',
      studentHasCustodian: map['studentHasCustodian'] ?? false,
      studentCustodianId: map['studentCustodianId'] ?? '',
      bookingId: map['bookingId'] ?? '',
      lessonBookingId: map['lessonBookingId'] ?? '',
      jobBookingId: map['jobBookingId'],
      subjectId: map['subjectId'] ?? '',
      startDate: map['startDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['startDate']).toLocal()
          : null,
      originalStartTime: map['originalStartTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['originalStartTime'])
              .toLocal()
          : null,
      lessonLength: map['lessonLength'] ?? 60,
      lessonTitle: map['lessonTitle'] ?? '',
      lessonDelivery: staticLessonDeliveryType.fromMap(map['lessonDelivery']),
      lessonRefunded: map['lessonRefunded'] ?? false,
      lessonDisputed: map['lessonDisputed'] ?? false,
      lessonCompleted: map['lessonCompleted'] ?? false,
      lessonPaidOut: map['lessonPaidOut'] ?? false,
      lessonPaidOutDate: map['lessonPaidOutDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['lessonPaidOutDate'])
              .toLocal()
          : null,
      lessonPendingPayOut: map['lessonPendingPayOut'],
      scheduledPayOutDate: map['scheduledPayOutDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['scheduledPayOutDate'])
              .toLocal()
          : null,
      attendanceStatusType:
          staticAttendanceStatusType.fromMap(map['attendanceStatusType']),
      costOfLesson: map['costOfLesson'] ?? 0,
      stripePriceId: map['stripePriceId'] ?? '',
      classroomRef: map['classroomRef'],
      lessonRef: map['lessonRef'],
      studentRef: map['studentRef'],
      tutorRef: map['tutorRef'],
      rtcChannelType: staticRtcChannelType.fromMap(map['rtcChannelType']),
      rtcProviderType: staticRtcProviderType.fromMap(map['rtcProviderType']),
      rtcConferenceLink: map['rtcConferenceLink'],
      zoomStartUrl: map['zoomStartUrl'],
      zoomJoinUrl: map['zoomJoinUrl'],
      zoomMeetingId: map['zoomMeetingId'],
      zoomMeetingCreationIndex: map['zoomMeetingCreationIndex'],
      isPendingSubsequentApproval: map['isPendingSubsequentApproval'] ?? false,
      currentWorkflows: List<LessonWorkflowType>.from(
          (map['currentWorkflows'] ?? [])
              .map((cw) => staticLessonWorkflowType.fromMap(cw))),
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonIndexModel.fromJson(String source) =>
      LessonIndexModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TutorLessonIndexModel(id: $id, tutorId: $tutorId, startDate: $startDate, classroomRef: $classroomRef, lessonRef: $lessonRef, studentRef: $studentRef)';
  }
}