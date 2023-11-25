part of 'system_overlay_bloc.dart';

class SystemOverlayState extends Equatable {
  final SystemOverlayCommandType? commandType;
  final String? loadingMessage;

  const SystemOverlayState({
    this.commandType,
    this.loadingMessage,
  });

  factory SystemOverlayState.initial(String? loadingMessage) {
    return SystemOverlayState(
        commandType: SystemOverlayCommandType.noop,
        loadingMessage: loadingMessage);
  }

  SystemOverlayState copyWith({
    SystemOverlayCommandType? commandType,
    String? loadingMessage,
  }) {
    return SystemOverlayState(
      commandType: commandType ?? this.commandType,
      loadingMessage: loadingMessage ?? this.loadingMessage,
    );
  }

  @override
  List<Object?> get props => [commandType, loadingMessage];
}