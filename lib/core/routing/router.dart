import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/features/authentication/pages/login_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => LoginView()),
  ],
);
