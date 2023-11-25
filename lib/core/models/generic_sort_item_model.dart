import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/sort_order_type.dart';

class GenericSortItemModel extends Equatable {
  final int? index;
  final String? sortFieldName;
  final SortOrderType? sortOrderType;
  final String? text;
  final bool isEmpty;

  const GenericSortItemModel({
    this.index,
    this.sortFieldName,
    this.sortOrderType,
    this.text,
    this.isEmpty = false,
  });

  factory GenericSortItemModel.empty() {
    return const GenericSortItemModel(isEmpty: true);
  }

  @override
  List<Object?> get props =>
      [index, sortFieldName, sortOrderType, text, isEmpty];

  GenericSortItemModel copyWith({
    int? index,
    String? sortFieldName,
    SortOrderType? sortOrderType,
    String? text,
  }) {
    return GenericSortItemModel(
      index: index ?? this.index,
      sortFieldName: sortFieldName ?? this.sortFieldName,
      sortOrderType: sortOrderType ?? this.sortOrderType,
      text: text ?? this.text,
    );
  }
}