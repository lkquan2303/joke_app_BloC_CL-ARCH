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

    injector.registerLazySingleton<ErrorHelper>(
      () => ErrorHelper(),
    );

    injector.registerLazySingleton<AppHelper>(
      () => AppHelper(),
    );

    injector.registerLazySingleton<LoadingFullScreenHelper>(
      () => LoadingFullScreenHelper(),
    );
  }
}
