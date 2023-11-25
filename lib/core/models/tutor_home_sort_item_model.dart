import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/sort_order_type.dart';
import 'package:tuiicore/core/enums/tutor_home_sort_field_type.dart';

class ClassroomHomeSortItemModel extends Equatable {
  final int index;
  final ClassroomHomeSortFieldType homeSortFieldType;
  final CommunicationGroupSortFieldType communicationGroupsSortFieldType;
  final SortOrderType sortOrderType;
  final String text;

  const ClassroomHomeSortItemModel({
    required this.index,
    required this.homeSortFieldType,
    required this.communicationGroupsSortFieldType,
    required this.sortOrderType,
    required this.text,
  });

  @override
  List<Object> get props => [
        index,
        homeSortFieldType,
        communicationGroupsSortFieldType,
        sortOrderType,
        text
      ];

  ClassroomHomeSortItemModel copyWith({
    int? index,
    ClassroomHomeSortFieldType? homeSortFieldType,
    CommunicationGroupSortFieldType? communicationGroupsSortFieldType,
    SortOrderType? sortOrderType,
    String? text,
  }) {
    return ClassroomHomeSortItemModel(
      index: index ?? this.index,
      homeSortFieldType: homeSortFieldType ?? this.homeSortFieldType,
      communicationGroupsSortFieldType: communicationGroupsSortFieldType ??
          this.communicationGroupsSortFieldType,
      sortOrderType: sortOrderType ?? this.sortOrderType,
      text: text ?? this.text,
    );
  }
}