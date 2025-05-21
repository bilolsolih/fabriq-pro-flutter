import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_types_state.freezed.dart';

enum MaterialsStatus { initial, idle, loading, loaded, success, error }

@freezed
abstract class MaterialTypesState with _$MaterialTypesState {
  const factory MaterialTypesState({
    required MaterialsStatus status,
    required List<MaterialTypeItemModel> materialsTypes,
    String? errorMessage,
  }) = _MaterialTypesState;

  factory MaterialTypesState.initial() {
    return MaterialTypesState(
      status: MaterialsStatus.initial,
      materialsTypes: [],
    );
  }
}
