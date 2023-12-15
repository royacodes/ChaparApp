part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final LoginResponse? loginResponse;
  LoginLoaded({required this.loginResponse});
  @override
  List<Object?> get props => [loginResponse];
}

class LoginFailure extends LoginState {
  final String errorMessage;
  final String errorCode;
  LoginFailure({
    required this.errorMessage,
    this.errorCode = defaultErrorCode,
  });
}
