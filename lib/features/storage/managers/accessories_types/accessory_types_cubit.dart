import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/data/repositories/accessory_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'accessory_types_state.dart';

class AccessoryTypesCubit extends Cubit<AccessoryTypesState> {
  AccessoryTypesCubit({required AccessoryRepository accRepo})
    : _accRepo = accRepo,
      super(AccessoryTypesState.initial());

  final AccessoryRepository _accRepo;

  Future loadAccessoryTypes() async {
    emit(state.copyWith(status: Status.loading));
    final accessoryTypes = await _accRepo.fetchAccessoryTypesList();
    emit(state.copyWith(status: Status.loaded, accessoryTypes: accessoryTypes));
  }

  Future createAccessoryType({required String title}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _accRepo.createNewAccessoryType(data: AccessoryTypeCreateModel(title: title));
      emit(state.copyWith(status: Status.success));
    } catch (ex) {
      emit(state.copyWith(status: Status.error, errorMessage: ex.toString()));
    }
  }

  Future updateAccessoryType({required int id, required String title}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _accRepo.updateAccessoryType(data: AccessoryTypeUpdateModel(id: id, title: title));
      emit(state.copyWith(status: Status.success));
    } catch (ex) {
      emit(state.copyWith(status: Status.error, errorMessage: ex.toString()));
    }
  }

  Future deleteAccessoryType({required int id, Map<String, dynamic>? queryParams}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _accRepo.deleteAccessoryType(id);
      final accessoryTypes = await _accRepo.fetchAccessoryTypesList(queryParams: queryParams);
      emit(state.copyWith(status: Status.loaded, accessoryTypes: accessoryTypes));
    } catch (ex) {
      emit(state.copyWith(status: Status.error, errorMessage: ex.toString()));
    }
  }
}
