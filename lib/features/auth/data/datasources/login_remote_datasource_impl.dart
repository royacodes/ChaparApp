import '../../../../core/core.dart';
import 'package:dio/dio.dart';

import '../../auth.dart';

class LoginRemoteDatasourceImpl implements LoginRemoteDatasource {
  final Dio dio;
  LoginRemoteDatasourceImpl({required this.dio});
  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    var response;
    const loginUrl = 'api/v1/auth/login';
    response = await dio.post(loginUrl, data: loginRequestModel.toJson());
    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(response.data);
    } else {
      throw ServerException(response.message, response.statusCode);
    }
  }
}
