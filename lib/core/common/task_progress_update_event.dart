import 'package:equatable/equatable.dart';

class TaskProgressUpdateEvent extends Equatable {
  final double progress;
  final String status;

  const TaskProgressUpdateEvent({
    required this.progress,
    this.status = '',
  });

  TaskProgressUpdateEvent copyWith({
    double? progress,
    String? status,
  }) {
    return TaskProgressUpdateEvent(
      progress: progress ?? this.progress,
      status: status ?? this.status,
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [progress, status];
}