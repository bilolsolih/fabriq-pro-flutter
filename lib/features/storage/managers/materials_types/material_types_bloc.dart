import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:fabriq_pro/data/repositories/material_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'material_types_state.dart';

part 'material_types_events.dart';

class MaterialTypesBloc extends Bloc<MaterialTypesEvent, MaterialTypesState> {
  MaterialTypesBloc({required MaterialRepository matRepo})
    : _matRepo = matRepo,
      super(MaterialTypesState.initial()) {
    on<LoadMaterialTypes>(_onLoad);
    on<CreateMaterialType>(_onCreateNew);
    on<DeleteMaterialType>(_onDelete);
    on<MaterialsUpdate>(_onUpdate);
    add(LoadMaterialTypes());
  }

  final MaterialRepository _matRepo;

  Future _onLoad(LoadMaterialTypes event, Emitter<MaterialTypesState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    final materials = await _matRepo.fetchMaterialTypesList(queryParams: event.queryParams);
    emit(state.copyWith(status: MaterialsStatus.loaded, materialsTypes: materials));
  }

  Future _onCreateNew(CreateMaterialType event, Emitter<MaterialTypesState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    try {
      await _matRepo.createNewMaterial(data: MaterialTypeCreateModel(title: event.title));
      emit(state.copyWith(status: MaterialsStatus.success));
    } catch (ex) {
      emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
    }
  }

  Future _onUpdate(MaterialsUpdate event, Emitter<MaterialTypesState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    try {
      await _matRepo.updateMaterial(
        data: MaterialTypeUpdateModel(id: event.id, title: event.title),
      );
      emit(state.copyWith(status: MaterialsStatus.success));
    } catch (ex) {
      emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
    }
  }

  Future _onDelete(DeleteMaterialType event, Emitter<MaterialTypesState> emit) async {
    emit(state.copyWith(status: MaterialsStatus.loading));
    try {
      await _matRepo.deleteMaterialType(event.id);
      final materials = await _matRepo.fetchMaterialTypesList(queryParams: event.queryParams);
      emit(state.copyWith(status: MaterialsStatus.loaded, materialsTypes: materials));
    } catch (ex) {
      emit(state.copyWith(status: MaterialsStatus.error, errorMessage: ex.toString()));
    }
  }
}
