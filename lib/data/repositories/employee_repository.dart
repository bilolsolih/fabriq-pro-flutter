import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/client/client_model.dart';
import 'package:fabriq_pro/data/models/employee/employee_model.dart';

class EmployeeRepository {
  EmployeeRepository({required this.client});

  final ApiClient client;

  Future<List<Employee>> fetchEmployees({int? page, int? limit}) async {
    final rawEmployees = await client.genericGetRequest<List<dynamic>>(
      '/users/list',
      queryParams: {"Limit": limit ?? "", "Page": page ?? ""},
    );
    return rawEmployees.map((employee) => Employee.fromJson(employee)).toList();
  }
}
