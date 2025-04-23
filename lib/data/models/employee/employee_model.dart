import 'package:fabriq_pro/data/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';

part 'employee_model.g.dart';

@freezed
abstract class Employee with _$Employee implements IJsonSerializable {
  const factory Employee({
    required int id,
    @JsonKey(name: 'profilePhoto') String? image,
    required String firstName,
    required String lastName,
    required String role,
    required String phoneNumber,
    required String address,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}
