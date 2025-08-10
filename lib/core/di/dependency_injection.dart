import 'package:get_it/get_it.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<SnackbarBloc>(() => SnackbarBloc());
}
