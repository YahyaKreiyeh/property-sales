import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/networking/dio_factory.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/core/utilities/validators.dart';
import 'package:property_sales/features/login/domain/entites/login_entity.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';

class LoginUseCase implements UseCase<LoginEntity, LoginParams> {
  final LoginRepository repository;
  const LoginUseCase(this.repository);

  @override
  Future<Result<LoginEntity>> call(LoginParams params) async {
    final e164Phone = toSyrianE164(params.phone);
    final result = await repository.login(phone: e164Phone);

    return result.when(
      success: (data) async {
        await DioFactory.updateToken(data.token);
        return Result.success(data: data);
      },
      failure: (error, stackTrace, msg) =>
          Result.failure(error: error, errorMessage: msg),
      loading: () => const Result.loading(),
      empty: () => const Result.empty(),
    );
  }
}

class LoginParams {
  final String phone;
  const LoginParams(this.phone);
}
