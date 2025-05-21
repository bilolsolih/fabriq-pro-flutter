import 'package:fabriq_pro/data/models/client/client_model.dart';
import 'package:fabriq_pro/data/models/employee/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_state.freezed.dart';

enum EmployeesStatus { initial, loading, success, error }

@freezed
abstract class EmployeesState with _$EmployeesState {
  const factory EmployeesState({required List<User> employees, required EmployeesStatus status}) =
      _EmployeesState;

  factory EmployeesState.initial() {
    return EmployeesState(employees: [], status: EmployeesStatus.initial);
  }
}
