import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/features/login/domain/entites/login_entity.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';

class LoginUseCase implements UseCase<LoginEntity, LoginParams> {
  final LoginRepository repository;
  const LoginUseCase(this.repository);

  @override
  Future<Result<LoginEntity>> call(LoginParams params) {
    return repository.login(phone: params.phone);
  }
}

class LoginParams {
  final String phone;
  const LoginParams(this.phone);
}
