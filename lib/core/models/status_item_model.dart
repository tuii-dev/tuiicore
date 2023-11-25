import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/task_status_type.dart';

class GenericStatusItemModel extends Equatable {
  final int? index;
  final TaskStatusType? statusType;
  final String? text;
  final bool isEmpty;

  const GenericStatusItemModel({
    this.index,
    this.statusType,
    this.text,
    this.isEmpty = false,
  });

  factory GenericStatusItemModel.empty() {
    return const GenericStatusItemModel(isEmpty: true);
  }

  @override
  List<Object?> get props => [index, statusType, text, isEmpty];

  GenericStatusItemModel copyWith({
    int? index,
    TaskStatusType? statusType,
    String? text,
  }) {
    return GenericStatusItemModel(
      index: index ?? this.index,
      statusType: statusType ?? this.statusType,
      text: text ?? this.text,
    );
  }
}