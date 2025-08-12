import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/mixins/cubit_mixin.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/utilities/validators.dart';
import 'package:property_sales/features/login/domain/usecases/login_usecase.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> with SafeEmitter<LoginState> {
  final LoginUseCase _loginUseCase;
  LoginCubit(this._loginUseCase) : super(LoginState());

  void phoneChanged(String val) {
    final digits = val.replaceAll(RegExp(r'\D'), '');
    final error = validateSyrianLocalNumber(digits)
        ? null
        : 'Enter a valid number';
    safeEmit(state.copyWith(phone: digits, phoneError: error));
  }

  Future<void> login() async {
    safeEmit(state.copyWith(status: const Result.loading()));

    final result = await _loginUseCase(LoginParams(state.phone));

    safeEmit(state.copyWith(status: result));
  }
}
