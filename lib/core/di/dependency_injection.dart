import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:property_sales/core/networking/dio_factory.dart';
import 'package:property_sales/features/home/data/data_sources/favorite_remote_data_source.dart';
import 'package:property_sales/features/home/data/data_sources/products_remote_data_source.dart';
import 'package:property_sales/features/home/data/repositories/favorite_repository_impl.dart';
import 'package:property_sales/features/home/data/repositories/products_repository_impl.dart';
import 'package:property_sales/features/home/data/services/favorite_service.dart';
import 'package:property_sales/features/home/data/services/products_service.dart';
import 'package:property_sales/features/home/domain/repositories/favorite_repository.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';
import 'package:property_sales/features/home/domain/usecases/add_to_favorite_usecase.dart';
import 'package:property_sales/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:property_sales/features/home/domain/usecases/remove_from_favorite_usecase.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';
import 'package:property_sales/features/login/data/data_sources/auth_local_data_source.dart';
import 'package:property_sales/features/login/data/repositories/login_repository_impl.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';
import 'package:property_sales/features/login/domain/usecases/login_usecase.dart';
import 'package:property_sales/features/login/presentation/cubit/login_cubit.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final dio = await DioFactory.getDio();
  getIt.registerSingleton<Dio>(dio);

  // Snackbar
  getIt.registerFactory<SnackbarBloc>(() => SnackbarBloc());

  // Login
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerLazySingleton<LocalDataSource>(
    () => const LocalDataSourceImpl(),
  );
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt()),
  );

  // Home
  getIt.registerLazySingleton<ProductsService>(() => ProductsService(getIt()));
  getIt.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<SearchProductsUseCase>(
    () => SearchProductsUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(getIt()),
  );
  getIt.registerLazySingleton<AddToFavoriteUseCase>(
    () => AddToFavoriteUseCase(getIt()),
  );
  getIt.registerLazySingleton<RemoveFromFavoriteUseCase>(
    () => RemoveFromFavoriteUseCase(getIt()),
  );
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(getIt(), getIt(), getIt(), getIt()),
  );

  // Favorites
  getIt.registerLazySingleton<FavoriteService>(() => FavoriteService(getIt()));
  getIt.registerLazySingleton<FavoriteRemoteDataSource>(
    () => FavoriteRemoteDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<FavoriteRepository>(
    () => FavoriteRepositoryImpl(getIt()),
  );
}
