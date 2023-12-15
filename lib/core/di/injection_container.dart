import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../config/config.dart';

final sl = GetIt.instance;

Future<void> init() async {
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
