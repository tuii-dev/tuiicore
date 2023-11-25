import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'form_animated_search_bridge_state.dart';

class FormAnimatedSearchBridgeCubit
    extends Cubit<FormAnimatedSearchBridgeState> {
  FormAnimatedSearchBridgeCubit()
      : super(FormAnimatedSearchBridgeState.initial());

  void toggleSearchOpenedState(bool searchOpened) {
    emit(state.copyWith(searchOpened: searchOpened));
  }

  void updateTransientWhereClause(String whereClause) {
    emit(state.copyWith(transientWhere: whereClause));
  }
}