part of 'master_command_control_bloc.dart';

class MasterCommandControlEvent extends Equatable {
  const MasterCommandControlEvent({required this.flag, this.reset = false});

  final bool flag;
  final bool reset;

  @override
  List<Object?> get props => [flag, reset];
}