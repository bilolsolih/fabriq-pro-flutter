import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:fabriq_pro/data/repositories/material_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'materials_state.dart';

part 'materials_events.dart';

class MaterialsBloc extends Bloc<MaterialsEvent, MaterialsState> {
  MaterialsBloc({required MaterialRepository matRepo})
    : _matRepo = matRepo,
      super(MaterialsState.initial()) {
    on<MaterialsLoad>(_onLoad);
    on<MaterialsCreateNew>(_onCreateNew);
    on<MaterialsDelete>(_onDelete);
    add(MaterialsLoad());
  }

  final MaterialRepository _matRepo;

  Future _onLoad(MaterialsLoad event, Emitter<MaterialsState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    final materials = await _matRepo.fetchMaterialsList(queryParams: event.queryParams);
    emit(state.copyWith(status: MaterialsStatus.loaded, materials: materials));
  }

  Future _onCreateNew(MaterialsCreateNew event, Emitter<MaterialsState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    try {
      await _matRepo.createNewMaterial(data: MaterialCreateModel(title: event.title));
      emit(state.copyWith(status: MaterialsStatus.success));
    } catch (ex) {
      emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
    }
  }

  // Future _onUpdate(MaterialsUpdate event, Emitter<MaterialsState> emit) async {
  //   emit(state.copyWith(status: MaterialsStatus.loading));
  //   try {
  //     await _matRepo.
  //   } catch (ex) {
  //     emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
  //   }
  // }

  Future _onDelete(MaterialsDelete event, Emitter<MaterialsState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    try {
      await _matRepo.deleteMaterialType(event.id);
      final materials = await _matRepo.fetchMaterialsList(queryParams: event.queryParams);
      emit(state.copyWith(status: MaterialsStatus.loaded, materials: materials));
    } catch (ex) {
      emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
    }
  }
}
