import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/job_dispatch_type.dart';

class JobDispatchModel extends Equatable {
  final String? id;
  final JobDispatchType? jobType;
  final dynamic payload;

  const JobDispatchModel({
    this.id,
    this.jobType,
    this.payload,
  });

  JobDispatchModel copyWith({
    String? id,
    JobDispatchType? jobType,
    dynamic payload,
  }) {
    return JobDispatchModel(
      id: id ?? this.id,
      jobType: jobType ?? this.jobType,
      payload: payload ?? this.payload,
    );
  }

  @override
  List<Object?> get props => [id, jobType, payload];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'jobType': jobType?.toMap(),
      'payload': payload?.toMap(),
    };
  }

  factory JobDispatchModel.fromMap(Map<String, dynamic> map) {
    const staticType = JobDispatchType.unknown;

    return JobDispatchModel(
      id: map['id'],
      jobType:
          map['jobType'] != null ? staticType.fromMap(map['jobType']) : null,
      payload: map['payload'],
    );
  }

  String toJson() => json.encode(toMap());

  factory JobDispatchModel.fromJson(String source) =>
      JobDispatchModel.fromMap(json.decode(source));
}