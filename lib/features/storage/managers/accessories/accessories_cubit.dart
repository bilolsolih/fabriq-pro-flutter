import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/data/repositories/accessory_repository.dart';
import 'package:fabriq_pro/data/repositories/user_repository.dart';
import 'package:fabriq_pro/features/storage/managers/accessories/accessories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccessoriesCubit extends Cubit<AccessoriesState> {
  AccessoriesCubit({required AccessoryRepository accRepo, required UserRepository usrRepo})
    : _accRepo = accRepo,
      _usrRepo = usrRepo,
      super(AccessoriesState.initial());

  final UserRepository _usrRepo;

  final AccessoryRepository _accRepo;

  Future addAccessoryToStorage({
    required int fromUserId,
    required int accessoryId,
    required num quantity,
    required String unit,
  }) async {
    final accessory = AccessoryAddModel(
      fromUserId: fromUserId,
      accessoryId: accessoryId,
      quantity: quantity,
      unit: unit,
    );

    await _accRepo.addAccessoryToStorage(data: accessory);
    emit(state.copyWith(status: Status.success));
    emit(state.copyWith(status: Status.idle));
  }

  Future loadSuppliersAndAccessories() async {
    final suppliers = _usrRepo.fetchSuppliers().then((value) {
      emit(state.copyWith(supplierEntries: value));
    });
    final accessories = _accRepo.fetchAccessoryTypesEntriesList().then((value) {
      emit(state.copyWith(accessoryEntries: value));
    });
    await Future.wait([suppliers, accessories]);
  }

  Future loadAccessories({int? typeId}) async {
    emit(state.copyWith(status: Status.loading));
    final accessories = await _accRepo.fetchAccessoriesList(queryParams: {"TypeId": typeId ?? ""});

    if (typeId != null) {
      final accessoryType = await _accRepo.fetchAccessoryType(id: typeId);
      if (accessoryType == null) {
        emit(state.copyWith(status: Status.error, errorMessage: "Bunday aksessuar turi topilmadi."));
      } else {
        emit(state.copyWith(status: Status.loaded, accessories: accessories, selectedType: accessoryType));
      }
    } else {
      emit(state.copyWith(status: Status.loaded, accessories: accessories));
    }
  }
}
