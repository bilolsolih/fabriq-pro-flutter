import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessory_types_state.freezed.dart';

@freezed
abstract class AccessoryTypesState with _$AccessoryTypesState {
  const factory AccessoryTypesState({
    required Status status,
    required List<AccessoryTypeModel> accessoryTypes,
    String? errorMessage,
  }) = _AccessoryTypesState;

  factory AccessoryTypesState.initial() {
    return AccessoryTypesState(status: Status.initial, accessoryTypes: [], errorMessage: null);
  }
}
