import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/di/dependency_injection.dart';
import 'package:property_sales/core/routing/routes.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';
import 'package:property_sales/features/home/presentation/views/home_view.dart';
import 'package:property_sales/features/login/presentation/cubit/login_cubit.dart';
import 'package:property_sales/features/login/presentation/views/login_view.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeView(),
          ),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      default:
        return null;
    }
  }
}
