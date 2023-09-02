import 'package:dio/dio.dart';
import 'package:joke_app/data/repositories/category_repository_implement.dart';
import 'package:joke_app/domain/use_cases/categories/submit_categories_use_case.dart';

import '../data/services/network_services/api_client/api_client.dart';
import '../data/services/network_services/interceptor/logger_interceptor.dart';
import '../domain/repositories/categories_repository.dart';
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

    injector.registerLazySingleton<SubmitCategoriesUseCase>(
      () => SubmitCategoriesUseCase(),
    );

    injector.registerLazySingleton<CategoriesRepository>(
      () => CategoryRepositoryImplement(
        injector.get<ApiClient>(),
      ),
    );
  }
}
