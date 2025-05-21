import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
abstract class User with _$User implements IJsonSerializable {
  const factory User({
    required int id,
    @JsonKey(name: 'profilePhoto') String? image,
    required String firstName,
    required String lastName,
    required String role,
    required String phoneNumber,
    required String address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
