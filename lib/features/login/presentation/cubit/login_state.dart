import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property_sales/core/models/result.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Result.empty()) Result status,
    @Default('') String phone,
    String? phoneError,
  }) = _LoginState;
}
