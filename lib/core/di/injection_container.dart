import 'package:chaparapp/core/core.dart';
import 'package:chaparapp/features/auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
      onRequest: (options, handler) async {
        if (options.path != APIPath.loginUrl) {
          const storage = FlutterSecureStorage();
          final accessToken = await storage.read(key: AppConsts.accessTokenKey);
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
        }

        return handler.next(options);
      },
    ));
    return dio;
  });
}
