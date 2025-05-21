import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/repositories/material_repository.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialsCubit extends Cubit<MaterialsState> {
  MaterialsCubit({required MaterialRepository matRepo})
    : _matRepo = matRepo,
      super(MaterialsState.initial());

  final MaterialRepository _matRepo;

  Future loadMaterials({int? typeId}) async {
    emit(state.copyWith(status: Status.loading));
    final materials = await _matRepo.fetchMaterialsList(queryParams: {"TypeId": typeId ?? ""});

    if (typeId != null) {
      final materialType = await _matRepo.fetchMaterialType(id: typeId);
      if (materialType == null) {
        emit(state.copyWith(status: Status.error, errorMessage: "Bunday material turi topilmadi."));
      } else {
        emit(
          state.copyWith(status: Status.loaded, materials: materials, selectedType: materialType),
        );
      }
    } else {
      emit(state.copyWith(status: Status.loaded, materials: materials));
    }
  }
}
