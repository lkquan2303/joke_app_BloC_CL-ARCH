import 'package:flutter/material.dart';
import 'package:joke_app/presentation/resources/app_theme.dart';

import '../injection/injector.dart';
import '../utilities/app_helper/app_helper.dart';
import '../utilities/app_helper/navigator_global_context_helper.dart';
import '../utilities/app_helper/size_config.dart';
import 'app_routes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final appHelper = injector.get<AppHelper>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    appHelper.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    appHelper.addAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JokeApp',
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),
      onGenerateRoute: AppRouter.onGenerateRoute,
      navigatorKey: injector.get<NavigatorGlobalContextHelper>().navigatorKey,
    );
  }
}
