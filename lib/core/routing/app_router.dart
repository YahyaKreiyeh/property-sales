import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:property_sales/core/di/dependency_injection.dart';
import 'package:property_sales/features/home/presentation/home_view.dart';
import 'package:property_sales/features/login/presentation/cubit/login_cubit.dart';
import 'package:property_sales/features/login/presentation/views/login_view.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.loginPath,
    routes: [
      GoRoute(
        name: Routes.login,
        path: Routes.loginPath,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          );
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
