import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/command_control_type.dart';

part 'command_control_event.dart';
part 'command_control_state.dart';

class CommandControlBloc
    extends Bloc<CommandControlEvent, CommandControlState> {
  CommandControlBloc() : super(CommandControlState.initial()) {
    on<ManageCommandControlEvent>((event, emit) async {
      switch (event.commandType) {
        case CommandControlType.filter:
          emit(state.copyWith(
            filterByStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.sort:
          emit(state.copyWith(
            sortByStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.status:
          emit(state.copyWith(
            taskStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.notificationSchedule:
          emit(state.copyWith(
            notificationScheduleStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.notificationTypes:
          emit(state.copyWith(
            notificationTypeStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.attendanceTypeStatus:
          emit(state.copyWith(
            attendanceTypeStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.dueDate:
          emit(state.copyWith(
            dueDateStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
            studentStatus: CommandControlStatus.closed,
          ));
          break;
        case CommandControlType.studentStatus:
          emit(state.copyWith(
            studentStatus: event.opened
                ? CommandControlStatus.opened
                : CommandControlStatus.closed,
            dueDateStatus: CommandControlStatus.closed,
            attendanceTypeStatus: CommandControlStatus.closed,
            sortByStatus: CommandControlStatus.closed,
            filterByStatus: CommandControlStatus.closed,
            taskStatus: CommandControlStatus.closed,
            notificationScheduleStatus: CommandControlStatus.closed,
            notificationTypeStatus: CommandControlStatus.closed,
          ));
          break;
      }
    });

    on<CloseAllCommandControlsEvent>((event, emit) async {
      emit(state.copyWith(
        filterByStatus: CommandControlStatus.closed,
        sortByStatus: CommandControlStatus.closed,
        taskStatus: CommandControlStatus.closed,
        notificationTypeStatus: CommandControlStatus.closed,
        notificationScheduleStatus: CommandControlStatus.closed,
        attendanceTypeStatus: CommandControlStatus.closed,
        dueDateStatus: CommandControlStatus.closed,
      ));
    });
  }
}