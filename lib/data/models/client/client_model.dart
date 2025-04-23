import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
abstract class Client with _$Client implements IJsonSerializable{
  const factory Client({
    required int id,
    required String firstName,
    required String lastName,
    required String address,
    required String phoneNumber,
    required int purchasesCount,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
