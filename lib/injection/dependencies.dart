import '../utilities/app_helper/app_flavor_helper.dart';
import '../utilities/app_helper/navigator_global_context_helper.dart';
import 'injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor appFlavor) async {
    // App Flavor
    injector.registerLazySingleton<AppFlavor>(() => appFlavor);

    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(
      () => NavigatorGlobalContextHelper(),
    );
  }
}
