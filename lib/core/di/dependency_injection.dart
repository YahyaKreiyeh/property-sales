import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:property_sales/core/networking/dio_factory.dart';
import 'package:property_sales/features/login/data/data_sources/auth_local_data_source.dart';
import 'package:property_sales/features/login/data/repositories/login_repository_impl.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';
import 'package:property_sales/features/login/domain/usecases/login_usecase.dart';
import 'package:property_sales/features/login/presentation/cubit/login_cubit.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();

  // snackbar
  getIt.registerFactory<SnackbarBloc>(() => SnackbarBloc());

  // login
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerLazySingleton<LocalDataSource>(
    () => const LocalDataSourceImpl(),
  );
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt()),
  );
}
