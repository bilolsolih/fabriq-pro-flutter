import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/supplier/supplier_entry_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/accessory/accessory_models.dart';

part 'accessories_state.freezed.dart';

@freezed
abstract class AccessoriesState with _$AccessoriesState {
  const factory AccessoriesState({
    required Status status,
    required List<AccessoryModel> accessories,
    required List<AccessoryEntryModel> accessoryEntries,
    required List<SupplierEntryModel> supplierEntries,
    AccessoryTypeModel? selectedType,
    String? errorMessage,
  }) = _AccessoriesState;

  factory AccessoriesState.initial() {
    return AccessoriesState(
      status: Status.initial,
      accessories: [],
      accessoryEntries: [],
      supplierEntries: [],
      selectedType: null,
      errorMessage: null,
    );
  }
}
