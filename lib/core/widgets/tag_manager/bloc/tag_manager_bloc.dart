import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tag_manager_event.dart';
part 'tag_manager_state.dart';

class TagManagerBloc extends Bloc<TagManagerEvent, TagManagerState> {
  TagManagerBloc() : super(TagManagerState.initial()) {
    on<InitTagsEvent>(_mapInitTagsToState);

    on<AddTagEvent>(_mapAddTagToState);

    on<RemoveTagEvent>(_mapRemoveTagToState);

    on<ClearTagsEvent>(_mapClearTagsToState);
  }

  init({required List<String> tags}) {
    add(InitTagsEvent(tags: tags));
  }

  _mapInitTagsToState(InitTagsEvent event, Emitter<TagManagerState> emit) {
    emit(state.copyWith(tags: event.tags));
  }

  _mapAddTagToState(AddTagEvent event, Emitter<TagManagerState> emit) {
    List<String> tags = List.from(state.tags ?? []);
    if (!tags.contains(event.tag)) {
      tags.add(event.tag);
      emit(state.copyWith(tags: tags, status: TagManagerStatus.tagAdded));
    }
  }

  _mapRemoveTagToState(RemoveTagEvent event, Emitter<TagManagerState> emit) {
    List<String> tags = List.from(state.tags ?? []);
    tags.remove(event.tag);

    emit(state.copyWith(tags: tags, status: TagManagerStatus.tagRemoved));
  }

  _mapClearTagsToState(ClearTagsEvent event, Emitter<TagManagerState> emit) {
    emit(state.copyWith(tags: [], status: TagManagerStatus.tagsCleared));
  }
}