import 'package:equatable/equatable.dart';

class TuiiCompleteProfileRouteArgs extends Equatable {
  final int selectedFormIndex;
  final bool isUpdatingProfile;
  final bool includeRoleSelectionForm;
  final int? childSelectedFormIndex;
  final bool? forceAtomicFormAction;

  const TuiiCompleteProfileRouteArgs({
    required this.selectedFormIndex,
    required this.isUpdatingProfile,
    required this.includeRoleSelectionForm,
    this.childSelectedFormIndex,
    this.forceAtomicFormAction = false,
  });

  TuiiCompleteProfileRouteArgs copyWith({
    int? selectedFormIndex,
    bool? isUpdatingProfile,
    bool? includeRoleSelectionForm,
    int? childSelectedFormIndex,
    bool? forceAtomicFormAction,
  }) {
    return TuiiCompleteProfileRouteArgs(
      selectedFormIndex: selectedFormIndex ?? this.selectedFormIndex,
      isUpdatingProfile: isUpdatingProfile ?? this.isUpdatingProfile,
      includeRoleSelectionForm:
          includeRoleSelectionForm ?? this.includeRoleSelectionForm,
      childSelectedFormIndex:
          childSelectedFormIndex ?? this.childSelectedFormIndex,
      forceAtomicFormAction:
          forceAtomicFormAction ?? this.forceAtomicFormAction,
    );
  }

  @override
  List<Object?> get props => [
        selectedFormIndex,
        isUpdatingProfile,
        includeRoleSelectionForm,
        forceAtomicFormAction,
        childSelectedFormIndex,
      ];
}