import '../../auth.dart';

abstract class LoginRemoteDatasource {
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel);
}
