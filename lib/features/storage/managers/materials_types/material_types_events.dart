part of 'material_types_bloc.dart';

sealed class MaterialTypesEvent {}

final class LoadMaterialTypes extends MaterialTypesEvent {
  final Map<String, dynamic>? queryParams;

  LoadMaterialTypes({this.queryParams});
}

final class CreateMaterialType extends MaterialTypesEvent {
  final String title;

  CreateMaterialType({required this.title});
}

final class DeleteMaterialType extends MaterialTypesEvent {
  final int id;
  final Map<String, dynamic>? queryParams;

  DeleteMaterialType({required this.id, this.queryParams});
}

final class MaterialsUpdate extends MaterialTypesEvent {
  final int id;
  final String title;

  MaterialsUpdate({required this.id, required this.title});
}

final class SelectMaterialType extends MaterialTypesEvent {
  final MaterialTypeItemModel selectedType;

  SelectMaterialType({required this.selectedType});
}
