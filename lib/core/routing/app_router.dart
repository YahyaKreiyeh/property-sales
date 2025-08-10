import 'package:go_router/go_router.dart';
import 'package:property_sales/features/home/presentation/home_view.dart';
import 'package:property_sales/features/login/presentation/login_view.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.loginPath,
    routes: [
      GoRoute(
        name: Routes.login,
        path: Routes.loginPath,
        builder: (context, state) {
          return const LoginView();
        },
      ),
      GoRoute(
        name: Routes.home,
        path: Routes.homePath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
