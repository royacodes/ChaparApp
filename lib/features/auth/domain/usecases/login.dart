import '../../../../core/core.dart';

import 'package:equatable/equatable.dart';

import '../../auth.dart';

class Login extends UseCase<LoginResponse, ParamLogin> {
  final LoginRepository loginRepository;
  Login({required this.loginRepository});
  @override
  Future<LoginResponse?> call(ParamLogin params) async {
    return await loginRepository.login(params.loginRequestModel);
  }

}

class ParamLogin extends Equatable {
  final LoginRequestModel loginRequestModel;
  const ParamLogin({required this.loginRequestModel});
  @override
  List<Object?> get props => [loginRequestModel];
  @override
  String toString() => 'ParamLogin{loginRequest: $loginRequestModel}';
}