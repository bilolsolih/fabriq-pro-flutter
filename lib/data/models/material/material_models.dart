import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_models.freezed.dart';

part 'material_models.g.dart';

@freezed
abstract class MaterialListModel with _$MaterialListModel {
  const factory MaterialListModel({
    required int id,
    required String title,
    required num totalInKg,
    required num totalInMeter,
    required num totalInPack,
  }) = _MaterialListModel;

  factory MaterialListModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialListModelFromJson(json);
}

@freezed
abstract class MaterialCreateModel with _$MaterialCreateModel implements IJsonSerializable {
  const factory MaterialCreateModel({required String title}) = _MaterialCreateModel;

  factory MaterialCreateModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialCreateModelFromJson(json);
}

@freezed
abstract class MaterialUpdateModel with _$MaterialUpdateModel implements IJsonSerializable {
  const factory MaterialUpdateModel({
    @JsonKey(includeToJson: false) required int id,
    required String title,
  }) = _MaterialUpdateModel;

  factory MaterialUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialUpdateModelFromJson(json);
}
