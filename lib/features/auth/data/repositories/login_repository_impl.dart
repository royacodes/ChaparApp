import '../../../../core/core.dart';
import 'package:dio/dio.dart';

import '../../auth.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource loginRemoteDatasource;
  LoginRepositoryImpl({
    required this.loginRemoteDatasource,
  });
  @override
  Future<LoginResponse?> login(LoginRequestModel loginRequestModel) async {
    late LoginResponse loginResponse;
    try {
      loginResponse = await loginRemoteDatasource.login(loginRequestModel);
      return loginResponse;
    } on DioException catch (error) {
      if (error.response == null) {
        if (error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          throw ServerException(serverTimeOutError, '0');
        } else {
          throw ServerException(serverResponseNull, '0');
        }
      } else {
        if (error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          throw ServerException(serverTimeOutError, '0');
        } else {
          throw ServerException(
              error.response!.statusMessage ?? serverOtherError,
              error.response!.statusCode.toString());
        }
      }
    } catch (e) {
      throw AppException(e.toString());
    }
  }
}
