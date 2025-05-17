import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model_info.freezed.dart';

part 'product_model_info.g.dart';

@freezed
abstract class ProductModelInfo with _$ProductModelInfo implements IJsonSerializable {
  const factory ProductModelInfo({
    required int id,
    required String title,
    required String colorTitle,
    required String colorHex,
    required String productType,
  }) = _ProductModelInfo;

  factory ProductModelInfo.fromJson(Map<String, dynamic> json) => _$ProductModelInfoFromJson(json);
}
