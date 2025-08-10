import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/di/dependency_injection.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';
import 'package:property_sales/property_sales.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();

  runApp(
    BlocProvider(
      create: (context) => getIt<SnackbarBloc>(),
      child: const PropertySales(),
    ),
  );
}
