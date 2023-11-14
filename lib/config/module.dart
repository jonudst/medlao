import 'package:injectable/injectable.dart';

import '../routes/app_router.dart';

@module
abstract class Module {
  @lazySingleton
  AppRouter get router => AppRouter();

  // @preResolve
  // Future<SharedPreferences> get share => SharedPreferences.getInstance();

  // @lazySingleton
  // Dio dio(@Named('appInterceptors') AppInterceptors appInterceptors) {
  //   final dio = Dio();
  //   dio.options.headers['content-Type'] = 'application/json';
  //   dio.interceptors.add(appInterceptors);
  //   dio.options.connectTimeout = const Duration(seconds: 60 * 1);
  //   dio.options.receiveTimeout = const Duration(seconds: 60 * 1);
  //   return dio;
  // }

  // @lazySingleton
  // FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  // @lazySingleton
  // FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
