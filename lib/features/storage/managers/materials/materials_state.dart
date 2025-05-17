import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'materials_state.freezed.dart';

enum MaterialsStatus { initial, idle, loading, loaded, success, error }

@freezed
abstract class MaterialsState with _$MaterialsState {
  const factory MaterialsState({
    required MaterialsStatus status,
    required List<MaterialListModel> materials,
    String? errorMessage,
  }) = _MaterialsState;

  factory MaterialsState.initial() {
    return MaterialsState(status: MaterialsStatus.initial, materials: []);
  }
}
