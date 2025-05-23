import 'package:fabriq_pro/data/repositories/client_repository.dart';
import 'package:fabriq_pro/data/repositories/employee_repository.dart';
import 'package:fabriq_pro/data/repositories/material_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/auth_repository.dart';
import 'client.dart';

final List<SingleChildWidget> dependencies = [
  RepositoryProvider(create: (context) => ApiClient()),
  RepositoryProvider(create: (context) => AuthRepository(client: context.read())),
  RepositoryProvider(create: (context) => ClientRepository(client: context.read())),
  RepositoryProvider(create: (context) => EmployeeRepository(client: context.read())),
  RepositoryProvider(create: (context) => MaterialRepository(client: context.read())),
];
