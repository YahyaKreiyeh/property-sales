import 'package:dio/dio.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/login/domain/entites/login_entity.dart';
import 'package:property_sales/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final Dio _dio;
  LoginRepositoryImpl(this._dio);

  @override
  Future<Result<LoginEntity>> login({required String phone}) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {'phone': phone},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Language': 'ar_SY',
          },
        ),
      );

      // assuming backend returns:
      // { "token": "abc123", "user": { "id": 1, "phone": "+9639xxxxxxx" } }
      final data = response.data as Map<String, dynamic>;

      final loginEntity = LoginEntity(
        token: data['token'] as String,
        // add any other fields if LoginEntity holds more
      );

      return Result.success(data: loginEntity);
    } on DioException catch (e) {
      final errorMsg = _extractErrorMessage(e);
      return Result.failure(error: e, errorMessage: errorMsg);
    } catch (e) {
      return Result.failure(error: Exception(e.toString()));
    }
  }

  String? _extractErrorMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map && data['message'] != null) {
      return data['message'].toString();
    }
    return e.message;
  }
}
