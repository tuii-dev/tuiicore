part of 'command_control_bloc.dart';

abstract class CommandControlEvent extends Equatable {
  const CommandControlEvent();

  @override
  List<Object?> get props => [];
}

class ManageCommandControlEvent extends CommandControlEvent {
  final CommandControlType commandType;
  final bool opened;

  const ManageCommandControlEvent({
    required this.commandType,
    required this.opened,
  });

  @override
  List<Object?> get props => [commandType, opened];
}

class CloseAllCommandControlsEvent extends CommandControlEvent {}