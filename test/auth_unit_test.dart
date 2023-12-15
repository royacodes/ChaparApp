import 'package:bloc_test/bloc_test.dart';
import 'package:chaparapp/core/di/injection_container.dart';
import 'package:chaparapp/features/auth/auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Login login = sl();
  group('Login Use Case', () {
    blocTest<LoginCubit, LoginState>(
        'emit login success when login is successful',
        build: () => LoginCubit(login: login),
        act: (cubit) => cubit.loggingIn(const LoginRequestModel(
            email: "test@example.com", password: "1234")),
        expect: () => [
              LoginLoading(),
              LoginLoaded(
                  loginResponse: const LoginResponse(
                      accessToken: "...", tokenType: "Bearer", expiresIn: 3600))
            ]);
  });
}
