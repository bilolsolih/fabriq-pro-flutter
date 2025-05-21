import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_models.freezed.dart';

part 'material_models.g.dart';

@freezed
abstract class MaterialTypeItemModel with _$MaterialTypeItemModel {
  const factory MaterialTypeItemModel({
    required int id,
    required String title,
    required num totalInKg,
    required num totalInMeter,
    required num totalInPack,
  }) = _MaterialListModel;

  factory MaterialTypeItemModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialTypeItemModelFromJson(json);
}

@freezed
abstract class MaterialTypeCreateModel with _$MaterialTypeCreateModel implements IJsonSerializable {
  const factory MaterialTypeCreateModel({required String title}) = _MaterialTypeCreateModel;

  factory MaterialTypeCreateModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialTypeCreateModelFromJson(json);
}

@freezed
abstract class MaterialTypeUpdateModel with _$MaterialTypeUpdateModel implements IJsonSerializable {
  const factory MaterialTypeUpdateModel({
    @JsonKey(includeToJson: false) required int id,
    required String title,
  }) = _MaterialTypeUpdateModel;

  factory MaterialTypeUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialTypeUpdateModelFromJson(json);
}

@freezed
abstract class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    required int id,
    required String partyNumber,
    required String fromUser,
    required String fromUserRole,
    required String toUser,
    required String toUserRole,
    required String acceptedUser,
    required String acceptedUserRole,
    required num width,
    required num thickness,
    required bool hasPatterns,
    required String colorTitle,
    required String colorHex,
    required num quantity,
    required String unit,
    required DateTime date,
    required String status,
  }) = _MaterialEntryModel;

  factory MaterialModel.fromJson(Map<String, dynamic> json) => _$MaterialModelFromJson(json);
}
