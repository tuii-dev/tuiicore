part of 'system_overlay_bloc.dart';

abstract class SystemOverlayEvent extends Equatable {
  const SystemOverlayEvent();

  @override
  List<Object?> get props => [];
}

class ShowSystemOverlayEvent extends SystemOverlayEvent {
  final String loadingMessage;

  const ShowSystemOverlayEvent({
    required this.loadingMessage,
  });

  @override
  List<Object> get props => [loadingMessage];
}

class HideSystemOverlayEvent extends SystemOverlayEvent {
  const HideSystemOverlayEvent();
}