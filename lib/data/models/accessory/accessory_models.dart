import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessory_models.freezed.dart';

part 'accessory_models.g.dart';

@freezed
sealed class AccessoryAddModel with _$AccessoryAddModel implements IJsonSerializable {
  const factory AccessoryAddModel({
    required int fromUserId,
    required int accessoryId,
    required num quantity,
    required String unit,
  }) = _AccessoryAddModel;

  factory AccessoryAddModel.fromJson(Map<String, dynamic> json) => _$AccessoryAddModelFromJson(json);
}

@freezed
abstract class AccessoryEntryModel with _$AccessoryEntryModel {
  const factory AccessoryEntryModel({required int id, required String title}) = _AccessoryEntryModel;

  factory AccessoryEntryModel.fromJson(Map<String, dynamic> json) => _$AccessoryEntryModelFromJson(json);
}

@freezed
abstract class AccessoryTypeModel with _$AccessoryTypeModel {
  const factory AccessoryTypeModel({required int id, required String title, required num quantity}) =
      _AccessoryTypeModel;

  factory AccessoryTypeModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeModelFromJson(json);
}

@freezed
abstract class AccessoryTypeCreateModel with _$AccessoryTypeCreateModel implements IJsonSerializable {
  const factory AccessoryTypeCreateModel({required String title}) = _AccessoryTypeCreateModel;

  factory AccessoryTypeCreateModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeCreateModelFromJson(json);
}

@freezed
abstract class AccessoryTypeUpdateModel with _$AccessoryTypeUpdateModel implements IJsonSerializable {
  const factory AccessoryTypeUpdateModel({@JsonKey(includeToJson: false) required int id, required String title}) =
      _AccessoryTypeUpdateModel;

  factory AccessoryTypeUpdateModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeUpdateModelFromJson(json);
}

@freezed
abstract class AccessoryModel with _$AccessoryModel {
  const factory AccessoryModel({
    required int id,
    required String fromUser,
    required String fromUserRole,
    required String toUser,
    required String toUserRole,
    required num quantity,
    required String unit,
    required DateTime date,
    required String status,
  }) = _AccessoryModel;

  factory AccessoryModel.fromJson(Map<String, dynamic> json) => _$AccessoryModelFromJson(json);
}
