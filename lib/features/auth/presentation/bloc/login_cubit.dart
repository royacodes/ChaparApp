import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../auth.dart';
import '../../../../core/core.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final Login login;

  LoginCubit({required this.login}) : super(LoginInitial());

  Future<void> loggingIn(LoginRequestModel loginRequestModel) async {
    try {
      emit(LoginLoading());
      final response =
          await login(ParamLogin(loginRequestModel: loginRequestModel));
      emit(LoginLoaded(loginResponse: response));
    } on ServerException catch (e) {
      emit(LoginFailure(errorMessage: e.message, errorCode: e.statusCode));
    } on NetworkException catch (e) {
      emit(LoginFailure(
        errorMessage: e.message,
      ));
    } on AppException catch (e) {
      emit(LoginFailure(
        errorMessage: e.message,
      ));
    }
  }
}
