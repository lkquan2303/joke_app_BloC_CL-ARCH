import 'dart:io';

import 'package:dio/dio.dart';
import 'package:joke_app/data/repositories/joke_repository_implement.dart';
import 'package:joke_app/domain/repositories/joke_repository.dart';
import 'package:joke_app/domain/use_cases/joke/submit_joke_use_case.dart';
import 'package:dio/adapter.dart';
import '../data/services/network_services/api_client/api_client.dart';
import '../data/services/network_services/interceptor/logger_interceptor.dart';
import '../utilities/app_helper/app_flavor_helper.dart';
import '../utilities/app_helper/app_helper.dart';
import '../utilities/dialog_helper/loading_full_screen_helper.dart';
import '../utilities/error_helper/error_helper.dart';
import '../utilities/logger_helper/logger_helper.dart';
import './injector.dart';

class AppModules {
  static Future<void> inject() async {
    // Helpers
    injector.registerLazySingleton<LoggerHelper>(
      () => LoggerHelper(
        isEnabled: injector.get<AppFlavor>().isDevelopment,
      ),
    );

    injector.registerLazySingleton<ApiClient>(
      () => ApiClient(
        injector.get<Dio>(),
        baseUrl: injector.get<AppFlavor>().apiBaseUrl,
      ),
    );

    injector.registerLazySingleton<Dio>(() {
      final dio = Dio();
      dio.options.baseUrl = injector.get<AppFlavor>().apiBaseUrl;
      dio.httpClientAdapter = DefaultHttpClientAdapter();

      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return null;
      };
      if (injector.get<AppFlavor>().isDevelopment) {
        dio.interceptors.add(LoggerInterceptor());
      }

      return dio;
    });
    injector.registerLazySingleton<ErrorHelper>(
      () => ErrorHelper(),
    );

    injector.registerLazySingleton<AppHelper>(
      () => AppHelper(),
    );

    injector.registerLazySingleton<LoadingFullScreenHelper>(
      () => LoadingFullScreenHelper(),
    );

    injector.registerLazySingleton<SubmitJokeUseCase>(
      () => SubmitJokeUseCase(),
    );

    injector.registerLazySingleton<JokeRepository>(
      () => JokeRepositoryImplement(
        injector.get<ApiClient>(),
      ),
    );
  }
}
