import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/login/domain/entites/login_entity.dart';

abstract class LoginRepository {
  Future<Result<LoginEntity>> login({required String phone});
}
