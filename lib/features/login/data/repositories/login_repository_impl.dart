import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/login/data/data_sources/auth_local_data_source.dart';
import 'package:property_sales/features/login/domain/entites/login_entity.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LocalDataSource _local;
  const LoginRepositoryImpl(this._local);

  @override
  Future<Result<LoginEntity>> login({required String phone}) async {
    try {
      await _local.saveToken(SharedPrefKeys.fixedToken);

      return const Result.success(
        data: LoginEntity(token: SharedPrefKeys.fixedToken),
      );
    } catch (e) {
      return Result.failure(
        error: Exception('Failed to persist token: $e'),
        errorMessage: 'Could not save token',
      );
    }
  }
}
