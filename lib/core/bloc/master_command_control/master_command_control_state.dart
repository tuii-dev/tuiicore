part of 'master_command_control_bloc.dart';

class MasterCommandControlState extends Equatable {
  final bool? masterFlag;
  final bool? reset;

  const MasterCommandControlState({
    this.masterFlag,
    this.reset,
  });

  factory MasterCommandControlState.initial() {
    return const MasterCommandControlState(masterFlag: false, reset: false);
  }
  @override
  List<Object?> get props => [masterFlag, reset];

  MasterCommandControlState copyWith({
    bool? masterFlag,
    bool? reset,
  }) {
    return MasterCommandControlState(
      masterFlag: masterFlag ?? this.masterFlag,
      reset: reset ?? this.reset,
    );
  }
}