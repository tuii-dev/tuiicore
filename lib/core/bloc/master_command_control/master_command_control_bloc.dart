import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'master_command_control_event.dart';
part 'master_command_control_state.dart';

class MasterCommandControlBloc
    extends Bloc<MasterCommandControlEvent, MasterCommandControlState> {
  MasterCommandControlBloc() : super(MasterCommandControlState.initial()) {
    on<MasterCommandControlEvent>((event, emit) async {
      emit(state.copyWith(masterFlag: event.flag, reset: event.reset));
    });
  }
}