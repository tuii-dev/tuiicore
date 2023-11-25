part of 'form_animated_search_bridge_cubit.dart';

class FormAnimatedSearchBridgeState extends Equatable {
  final bool? searchOpened;
  final String? transientWhere;

  const FormAnimatedSearchBridgeState({
    this.searchOpened,
    this.transientWhere,
  });

  factory FormAnimatedSearchBridgeState.initial() {
    return const FormAnimatedSearchBridgeState(
        searchOpened: false, transientWhere: '');
  }

  @override
  List<Object?> get props => [searchOpened, transientWhere];

  FormAnimatedSearchBridgeState copyWith({
    bool? searchOpened,
    String? transientWhere,
  }) {
    return FormAnimatedSearchBridgeState(
      searchOpened: searchOpened ?? this.searchOpened,
      transientWhere: transientWhere ?? this.transientWhere,
    );
  }
}