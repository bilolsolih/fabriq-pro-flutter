part of 'employees_bloc.dart';

sealed class EmployeesEvent {}

final class EmployeesLoad extends EmployeesEvent {
  final int page, limit;

  EmployeesLoad({required this.page, required this.limit});
}