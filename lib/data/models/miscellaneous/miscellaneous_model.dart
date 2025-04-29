import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'miscellaneous_model.freezed.dart';
part 'miscellaneous_model.g.dart';

@freezed
abstract class Miscellaneous with _$Miscellaneous implements IJsonSerializable {
  const factory Miscellaneous({
    required int id,
    required String name,
    required String model,
    required String detail,
    required String quantity,
    required String date,
  }) = _Miscellaneous;

  factory Miscellaneous.fromJson(Map<String, dynamic> json) => _$MiscellaneousFromJson(json);
}

