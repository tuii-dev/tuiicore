part of 'tag_manager_bloc.dart';

enum TagManagerStatus {
  initial,
  submitting,
  tagAdded,
  tagRemoved,
  tagsCleared,
  success,
  error,
}

class TagManagerState extends Equatable {
  final TagManagerStatus? status;
  final List<String>? tags;
  final List<String>? popularTags;

  const TagManagerState({
    this.status,
    this.tags,
    this.popularTags,
  });

  factory TagManagerState.initial() {
    return TagManagerState(
      status: TagManagerStatus.initial,
      tags: const [],
      popularTags: DataModels.popularTags,
    );
  }

  @override
  List<Object?> get props => [status, tags, popularTags];

  TagManagerState copyWith({
    TagManagerStatus? status,
    List<String>? tags,
  }) {
    return TagManagerState(
      status: status ?? this.status,
      tags: tags ?? this.tags,
      popularTags: popularTags,
    );
  }
}