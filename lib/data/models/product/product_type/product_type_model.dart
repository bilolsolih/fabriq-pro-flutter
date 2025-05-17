import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type_model.freezed.dart';

part 'product_type_model.g.dart';

@freezed
abstract class ProductTypeModel with _$ProductTypeModel implements IJsonSerializable {
  const factory ProductTypeModel({required int id, required String title}) = _ProductTypeModel;

  factory ProductTypeModel.fromJson(Map<String, dynamic> json) => _$ProductTypeModelFromJson(json);
}
