import 'package:equatable/equatable.dart';

class FilterItemModel extends Equatable {
  final int? index;
  final bool? checked;
  final String? text;
  final bool isEmpty;

  const FilterItemModel({
    this.index,
    this.checked,
    this.text,
    this.isEmpty = false,
  });

  factory FilterItemModel.empty() {
    return const FilterItemModel(isEmpty: true);
  }

  @override
  List<Object?> get props => [index, checked, text, isEmpty];

  FilterItemModel copyWith({
    int? index,
    bool? checked,
    String? text,
  }) {
    return FilterItemModel(
      index: index ?? this.index,
      checked: checked ?? this.checked,
      text: text ?? this.text,
    );
  }
}