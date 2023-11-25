import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/system_overlay_command_type.dart';

part 'system_overlay_event.dart';
part 'system_overlay_state.dart';

class SystemOverlayBloc extends Bloc<SystemOverlayEvent, SystemOverlayState> {
  SystemOverlayBloc() : super(SystemOverlayState.initial('')) {
    on<ShowSystemOverlayEvent>((event, emit) {
      emit(state.copyWith(
          commandType: SystemOverlayCommandType.showSystemOverlay,
          loadingMessage: event.loadingMessage));
    });

    on<HideSystemOverlayEvent>((event, emit) {
      emit(state.copyWith(
          commandType: SystemOverlayCommandType.hideSystemOverlay,
          loadingMessage: ''));
    });
  }
}