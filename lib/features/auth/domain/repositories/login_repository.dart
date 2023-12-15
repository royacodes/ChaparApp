import '../../auth.dart';

abstract class LoginRepository {
  Future<LoginResponse?> login(LoginRequestModel loginRequestModel);
}
