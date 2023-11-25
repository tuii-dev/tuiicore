import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/reminder_type.dart';

class GenericReminderTypeItemModel extends Equatable {
  final int? index;
  final ReminderType? reminderType;
  final String? text;
  final bool checked;
  final bool isEmpty;

  const GenericReminderTypeItemModel({
    this.index,
    this.reminderType,
    this.text,
    this.checked = false,
    this.isEmpty = false,
  });

  factory GenericReminderTypeItemModel.empty() {
    return const GenericReminderTypeItemModel(isEmpty: true);
  }

  @override
  List<Object?> get props => [index, reminderType, text, checked, isEmpty];

  GenericReminderTypeItemModel copyWith({
    int? index,
    ReminderType? reminderType,
    String? text,
    bool? checked,
  }) {
    return GenericReminderTypeItemModel(
      index: index ?? this.index,
      reminderType: reminderType ?? this.reminderType,
      text: text ?? this.text,
      checked: checked ?? this.checked,
    );
  }
}