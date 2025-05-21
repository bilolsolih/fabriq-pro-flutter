import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/employee/user_model.dart';
import 'package:fabriq_pro/data/models/supplier/supplier_entry_model.dart';

class UserRepository {
  UserRepository({required this.client});

  List<SupplierEntryModel> suppliers = [];

  final ApiClient client;

  Future<List<User>> fetchUsers({int? page, int? limit}) async {
    final rawEmployees = await client.genericGetRequest<List<dynamic>>(
      '/users/list',
      queryParams: {"Limit": limit ?? "", "Page": page ?? ""},
    );
    return rawEmployees.map((employee) => User.fromJson(employee)).toList();
  }

  Future<List<SupplierEntryModel>> fetchSuppliers({int? page, int? limit}) async {
    if (suppliers.isNotEmpty) return suppliers;

    final rawSuppliers = await client.genericGetRequest<List<dynamic>>(
      '/users/list',
      queryParams: {"Limit": limit ?? "", "Page": page ?? "", "Role": "Supplier"},
    );
    suppliers = rawSuppliers.map((employee) => SupplierEntryModel.fromJson(employee)).toList();
    return suppliers;
  }
}
