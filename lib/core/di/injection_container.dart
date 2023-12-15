import 'package:chaparapp/features/auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../config/config.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///UseCases
  sl.registerLazySingleton(() => Login(loginRepository: sl()));

  ///Repositories
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(
        loginRemoteDatasource: sl(),
      ));

  ///Remote Data Sources
  sl.registerLazySingleton<LoginRemoteDatasource>(
      () => LoginRemoteDatasourceImpl(dio: sl()));

  sl.registerLazySingleton(() {
    final dio = Dio();
    dio.options.baseUrl = AppConfig.baseUrl;
    dio.options.connectTimeout = const Duration(milliseconds: 30000);
    dio.options.receiveTimeout = const Duration(milliseconds: 30000);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {},
    ));
    return dio;
  });
}
