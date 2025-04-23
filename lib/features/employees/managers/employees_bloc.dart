import 'package:fabriq_pro/data/repositories/employee_repository.dart';
import 'package:fabriq_pro/features/employees/managers/employees_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'employees_events.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc({required EmployeeRepository employeeRepo})
    : _employeeRepo = employeeRepo,
      super(EmployeesState.initial()) {
    on<EmployeesLoad>(_onLoad);
    add(EmployeesLoad(page: 1, limit: 12));
  }

  final EmployeeRepository _employeeRepo;

  Future _onLoad(EmployeesLoad event, Emitter<EmployeesState> emit) async {
    emit(state.copyWith(status: EmployeesStatus.loading));
    final employees = await _employeeRepo.fetchEmployees(page: event.page, limit: event.limit);
    emit(state.copyWith(status: EmployeesStatus.success, employees: employees));
  }
}
