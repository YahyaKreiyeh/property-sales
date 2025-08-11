import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/networking/dio_factory.dart';
import 'package:property_sales/core/utilities/validators.dart';
import 'package:property_sales/features/login/domain/usecases/login_usecase.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;
  LoginCubit(this._loginUseCase) : super(LoginState());

  void phoneChanged(String val) {
    final digits = val.replaceAll(RegExp(r'\D'), '');
    final error = validateSyrianLocalNumber(digits)
        ? null
        : 'Enter a valid number';
    emit(state.copyWith(phone: digits, phoneError: error));
  }

  Future<void> login() async {
    if (state.phoneError != null || state.phone.isEmpty) return;

    emit(state.copyWith(status: const Result.loading()));

    final e164 = toSyrianE164(state.phone);
    final result = await _loginUseCase(LoginParams(e164));

    result.when(
      success: (data) async {
        await DioFactory.updateToken(data.token);
        emit(state.copyWith(status: Result.success(data: data)));
      },

      failure: (error, _, msg) => emit(
        state.copyWith(
          status: Result.failure(error: error, errorMessage: msg),
        ),
      ),
      loading: () => emit(state.copyWith(status: const Result.loading())),
      empty: () => emit(state.copyWith(status: const Result.empty())),
    );
  }
}
