import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'materials_state.freezed.dart';

@freezed
abstract class MaterialsState with _$MaterialsState {
  const factory MaterialsState({
    required Status status,
    required List<MaterialModel> materials,
    MaterialTypeItemModel? selectedType,
    String? errorMessage,
  }) = _MaterialsState;

  factory MaterialsState.initial() {
    return MaterialsState(
      status: Status.initial,
      materials: [],
      selectedType: null,
      errorMessage: null,
    );
  }
}
