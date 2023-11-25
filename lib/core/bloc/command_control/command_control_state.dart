part of 'command_control_bloc.dart';

enum CommandControlStatus { opened, closed }

class CommandControlState extends Equatable {
  final CommandControlStatus? filterByStatus;
  final CommandControlStatus? sortByStatus;
  final CommandControlStatus? taskStatus;
  final CommandControlStatus? notificationScheduleStatus;
  final CommandControlStatus? notificationTypeStatus;
  final CommandControlStatus? attendanceTypeStatus;
  final CommandControlStatus? dueDateStatus;
  final CommandControlStatus? studentStatus;

  const CommandControlState({
    this.filterByStatus,
    this.sortByStatus,
    this.taskStatus,
    this.notificationScheduleStatus,
    this.notificationTypeStatus,
    this.attendanceTypeStatus,
    this.dueDateStatus,
    this.studentStatus,
  });

  factory CommandControlState.initial() {
    return const CommandControlState(
      filterByStatus: CommandControlStatus.closed,
      sortByStatus: CommandControlStatus.closed,
      taskStatus: CommandControlStatus.closed,
      notificationScheduleStatus: CommandControlStatus.closed,
      notificationTypeStatus: CommandControlStatus.closed,
      attendanceTypeStatus: CommandControlStatus.closed,
      dueDateStatus: CommandControlStatus.closed,
      studentStatus: CommandControlStatus.closed,
    );
  }
  @override
  List<Object?> get props => [
        filterByStatus,
        sortByStatus,
        taskStatus,
        notificationScheduleStatus,
        notificationTypeStatus,
        attendanceTypeStatus,
        dueDateStatus,
        studentStatus,
      ];

  CommandControlState copyWith({
    CommandControlStatus? filterByStatus,
    CommandControlStatus? sortByStatus,
    CommandControlStatus? taskStatus,
    CommandControlStatus? notificationScheduleStatus,
    CommandControlStatus? notificationTypeStatus,
    CommandControlStatus? attendanceTypeStatus,
    CommandControlStatus? dueDateStatus,
    CommandControlStatus? studentStatus,
  }) {
    return CommandControlState(
      filterByStatus: filterByStatus ?? this.filterByStatus,
      sortByStatus: sortByStatus ?? this.sortByStatus,
      taskStatus: taskStatus ?? this.taskStatus,
      notificationScheduleStatus:
          notificationScheduleStatus ?? this.notificationScheduleStatus,
      notificationTypeStatus:
          notificationTypeStatus ?? this.notificationTypeStatus,
      attendanceTypeStatus: attendanceTypeStatus ?? this.attendanceTypeStatus,
      dueDateStatus: dueDateStatus ?? this.dueDateStatus,
      studentStatus: studentStatus ?? this.studentStatus,
    );
  }
}