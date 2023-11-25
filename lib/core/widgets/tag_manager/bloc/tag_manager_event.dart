part of 'tag_manager_bloc.dart';

abstract class TagManagerEvent extends Equatable {
  const TagManagerEvent();

  @override
  List<Object?> get props => [];
}

class InitTagsEvent extends TagManagerEvent {
  final List<String> tags;

  const InitTagsEvent({required this.tags});

  @override
  List<Object?> get props => [
        tags,
      ];
}

class AddTagEvent extends TagManagerEvent {
  final String tag;

  const AddTagEvent({required this.tag});

  @override
  List<Object?> get props => [
        tag,
      ];
}

class RemoveTagEvent extends TagManagerEvent {
  final String tag;

  const RemoveTagEvent({required this.tag});

  @override
  List<Object?> get props => [
        tag,
      ];
}

class ClearTagsEvent extends TagManagerEvent {
  const ClearTagsEvent();

  @override
  List<Object?> get props => [];
}