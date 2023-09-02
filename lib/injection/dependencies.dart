import 'package:joke_app/presentation/feature/home/bloc/home_page_module.dart';

import '../utilities/app_helper/app_flavor_helper.dart';
import '../utilities/app_helper/navigator_global_context_helper.dart';
import 'app_modules.dart';
import 'injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor appFlavor) async {
    // App Flavor
    injector.registerLazySingleton<AppFlavor>(() => appFlavor);

    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(
      () => NavigatorGlobalContextHelper(),
    );

    await AppModules.inject();
    await HomepageModule.inject();
  }
}
