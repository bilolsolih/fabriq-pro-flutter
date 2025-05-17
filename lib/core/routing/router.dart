import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/features/employees/managers/employees_bloc.dart';
import 'package:fabriq_pro/features/employees/pages/employee_update_view.dart';
import 'package:fabriq_pro/features/employees/pages/employees_view.dart';
import 'package:fabriq_pro/features/authentication/pages/login_view.dart';
import 'package:fabriq_pro/features/clients/managers/clients_bloc.dart';
import 'package:fabriq_pro/features/clients/pages/client_update_view.dart';
import 'package:fabriq_pro/features/clients/pages/clients_view.dart';
import 'package:fabriq_pro/features/common/pages/base_view.dart';
import 'package:fabriq_pro/features/finance/pages/finance_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/cutting_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/packaging_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/sewing_view.dart';
import 'package:fabriq_pro/features/monitoring/pages/monitoring_view.dart';
import 'package:fabriq_pro/features/notifications/pages/notifications_view.dart';
import 'package:fabriq_pro/features/orders/pages/orders_view.dart';
import 'package:fabriq_pro/features/settings/pages/settings_view.dart';
import 'package:fabriq_pro/features/statistics/pages/statistics_view.dart';
import 'package:fabriq_pro/features/storage/managers/products_manager/products_bloc.dart';
import 'package:fabriq_pro/features/storage/pages/accessories_view.dart';
import 'package:fabriq_pro/features/storage/pages/clothes_view.dart';
import 'package:fabriq_pro/features/storage/pages/miscellaneous_view.dart';
import 'package:fabriq_pro/features/storage/pages/products/products_view.dart';
import 'package:fabriq_pro/features/storage/pages/spare_parts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: Routes.employees,
  routes: [
    ShellRoute(
      builder: (context, state, child) => BaseView(child: child),
      routes: [
        GoRoute(path: Routes.statistics, builder: (context, state) => StatisticsView()),
        GoRoute(path: Routes.monitoring, builder: (context, state) => MonitoringView()),
        GoRoute(path: Routes.finance, builder: (context, state) => FinanceView()),
        GoRoute(
          path: Routes.clients,
          builder:
              (context, state) => BlocProvider(
                create: (context) => ClientsBloc(clientRepo: context.read()),
                child: ClientsView(),
              ),
          routes: [
            GoRoute(path: Routes.clientUpdate, builder: (context, state) => ClientUpdateView()),
          ],
        ),
        GoRoute(path: Routes.orders, builder: (context, state) => OrdersView()),
        GoRoute(
          path: Routes.products,
          builder:
              (context, state) => BlocProvider(
                create: (BuildContext context) => ProductsBloc(productRepo: context.read()),
                child: ProductsView(),
              ),
        ),
        GoRoute(path: Routes.clothes, builder: (context, state) => ClothesView()),
        GoRoute(path: Routes.accessories, builder: (context, state) => AccessoriesView()),
        GoRoute(path: Routes.spareParts, builder: (context, state) => SparePartsView()),
        GoRoute(path: Routes.miscellaneous, builder: (context, state) => MiscellaneousView()),
        GoRoute(path: Routes.cutting, builder: (context, state) => CuttingView()),
        GoRoute(path: Routes.sewing, builder: (context, state) => SewingView()),
        GoRoute(path: Routes.packaging, builder: (context, state) => PackagingView()),
        GoRoute(
          path: Routes.employees,
          builder:
              (context, state) => BlocProvider(
                create: (context) => EmployeesBloc(employeeRepo: context.read()),
                child: EmployeesView(),
              ),
          routes: [
            GoRoute(path: Routes.employeeUpdate, builder: (context, state) => EmployeeUpdateView()),
          ],
        ),
        GoRoute(path: Routes.notifications, builder: (context, state) => NotificationsView()),
        GoRoute(path: Routes.settings, builder: (context, state) => SettingsView()),
      ],
    ),
    GoRoute(path: Routes.login, builder: (context, state) => LoginView()),
  ],
);
