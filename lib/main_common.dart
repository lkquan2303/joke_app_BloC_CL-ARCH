import 'package:flutter/material.dart';
import 'package:joke_app/presentation/app.dart';
import 'package:joke_app/utilities/app_helper/app_flavor_helper.dart';

import 'injection/dependencies.dart';

Future<void> mainCommon(AppFlavor flavor) async {
  // NOTE: This is required for accessing the method channel before runApp().
  WidgetsFlutterBinding.ensureInitialized();

  await DependencyManager.inject(flavor);
  runApp(const App());
}
