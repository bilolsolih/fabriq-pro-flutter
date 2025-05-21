import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_entry_model.freezed.dart';

part 'supplier_entry_model.g.dart';

@freezed
abstract class SupplierEntryModel with _$SupplierEntryModel {
  const factory SupplierEntryModel({
    required int id,
    required String firstName,
    required String lastName,
  }) = _SupplierEntryModel;

  factory SupplierEntryModel.fromJson(Map<String, dynamic> json) =>
      _$SupplierEntryModelFromJson(json);
}
