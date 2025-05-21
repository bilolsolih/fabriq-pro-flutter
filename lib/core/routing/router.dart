import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:fabriq_pro/features/authentication/managers/login_bloc.dart';
import 'package:fabriq_pro/features/authentication/pages/login_view.dart';
import 'package:fabriq_pro/features/clients/managers/clients_bloc.dart';
import 'package:fabriq_pro/features/clients/pages/client_update_view.dart';
import 'package:fabriq_pro/features/clients/pages/clients_view.dart';
import 'package:fabriq_pro/features/common/pages/base_view.dart';
import 'package:fabriq_pro/features/common/pages/dialog_route.dart';
import 'package:fabriq_pro/features/employees/managers/employees_bloc.dart';
import 'package:fabriq_pro/features/employees/pages/employee_update_view.dart';
import 'package:fabriq_pro/features/employees/pages/employees_view.dart';
import 'package:fabriq_pro/features/finance/pages/finance_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/cutting_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/packaging_view.dart';
import 'package:fabriq_pro/features/manufacture/pages/sewing_view.dart';
import 'package:fabriq_pro/features/monitoring/pages/monitoring_view.dart';
import 'package:fabriq_pro/features/notifications/pages/notifications_view.dart';
import 'package:fabriq_pro/features/orders/pages/orders_view.dart';
import 'package:fabriq_pro/features/settings/pages/settings_view.dart';
import 'package:fabriq_pro/features/statistics/pages/statistics_view.dart';
import 'package:fabriq_pro/features/storage/managers/accessories/accessories_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_cubit.dart';
import 'package:fabriq_pro/features/storage/pages/accessories_view.dart';
import 'package:fabriq_pro/features/storage/pages/accessory_types_view.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/accessory/accessory_add_dialog.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/accessory/accessory_type_create_dialog.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/accessory/accessory_type_update_dialog.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/material/material_create_dialog.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/material/material_update_dialog.dart';
import 'package:fabriq_pro/features/storage/pages/material_types_detail_view.dart';
import 'package:fabriq_pro/features/storage/pages/miscellaneous_view.dart';
import 'package:fabriq_pro/features/storage/pages/products_view.dart';
import 'package:fabriq_pro/features/storage/pages/spare_parts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/storage/managers/materials_types/material_types_bloc.dart';
import '../../features/storage/pages/material_types_view.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: "/temp",
  routes: [
    GoRoute(
      path: "/temp",
      pageBuilder: (context, state) {
        return DialogPage(
          builder: (context) {
            return BlocProvider(
              create: (context) {
                return AccessoriesCubit(accRepo: context.read(), usrRepo: context.read())
                  ..loadSuppliersAndAccessories();
              },
              child: AccessoryAddDialog(),
            );
          },
        );
      },
    ),
    ShellRoute(
      builder: (context, state, child) => BaseView(child: child),
      routes: [
        ...storageRoutes,
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
        GoRoute(path: Routes.products, builder: (context, state) => ProductsView()),
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
    GoRoute(
      path: Routes.login,
      builder:
          (context, state) => BlocProvider(
            create: (context) => LoginBloc(authRepo: context.read()),
            child: LoginView(),
          ),
    ),
  ],
);

final List<RouteBase> storageRoutes = [
  ShellRoute(
    builder: (context, state, child) {
      return BlocProvider(
        create: (context) => MaterialTypesBloc(matRepo: context.read()),
        child: child,
      );
    },
    routes: [
      GoRoute(
        path: Routes.materials,
        builder: (context, state) => MaterialTypesView(),
        routes: [
          GoRoute(
            path: Routes.genericCreate,
            pageBuilder: (context, state) {
              return DialogPage(builder: (context) => MaterialCreateDialog());
            },
          ),
          GoRoute(
            path: Routes.genericUpdate,
            pageBuilder: (context, state) {
              return DialogPage(
                builder: (context) {
                  return MaterialUpdateDialog(materialType: state.extra as MaterialTypeItemModel);
                },
              );
            },
          ),
          GoRoute(
            path: Routes.genericDetail,
            builder: (context, state) {
              return BlocProvider(
                create: (context) {
                  return MaterialsCubit(matRepo: context.read())
                    ..loadMaterials(typeId: int.tryParse(state.pathParameters["id"]!));
                },
                child: MaterialsView(),
              );
            },
          ),
        ],
      ),
    ],
  ),
  ShellRoute(
    builder: (context, state, child) {
      return BlocProvider(
        create: (context) => AccessoryTypesCubit(accRepo: context.read())..loadAccessoryTypes(),
        child: child,
      );
    },
    routes: [
      GoRoute(
        path: Routes.accessories,
        builder: (context, state) => AccessoryTypesView(),
        routes: [
          GoRoute(
            path: Routes.genericCreate,
            pageBuilder: (context, state) {
              return DialogPage(builder: (context) => AccessoryTypeCreateDialog());
            },
          ),
          GoRoute(
            path: Routes.genericUpdate,
            pageBuilder: (context, state) {
              return DialogPage(
                builder: (context) {
                  return AccessoryTypeUpdateDialog(
                    accessoryType: state.extra as AccessoryTypeModel,
                  );
                },
              );
            },
          ),
          GoRoute(
            path: Routes.genericDetail,
            builder: (context, state) {
              return BlocProvider(
                create: (context) {
                  return AccessoriesCubit(accRepo: context.read(), usrRepo: context.read())
                    ..loadAccessories(typeId: int.tryParse(state.pathParameters["id"]!));
                },
                child: AccessoriesView(),
              );
            },
          ),
        ],
      ),
    ],
  ),
  GoRoute(path: Routes.spareParts, builder: (context, state) => SparePartsView()),
  GoRoute(path: Routes.miscellaneous, builder: (context, state) => MiscellaneousView()),
];
