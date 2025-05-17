part of 'materials_bloc.dart';

sealed class MaterialsEvent {}

final class MaterialsLoad extends MaterialsEvent {
  final Map<String, dynamic>? queryParams;

  MaterialsLoad({this.queryParams});
}

final class MaterialsCreateNew extends MaterialsEvent {
  final String title;

  MaterialsCreateNew({required this.title});
}

final class MaterialsDelete extends MaterialsEvent {
  final int id;
  final Map<String, dynamic>? queryParams;

  MaterialsDelete({required this.id, this.queryParams});
}

final class MaterialsUpdate extends MaterialsEvent {
  final int id;
  final String title;

  MaterialsUpdate({required this.id, required this.title});
}
