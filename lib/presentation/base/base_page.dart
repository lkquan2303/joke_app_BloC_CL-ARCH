import 'package:flutter/material.dart';

import '../../injection/injector.dart';
import '../../utilities/error_helper/error_helper.dart';
import '../../utilities/logger_helper/logger_helper.dart';
import 'base_page_mixin.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
}

abstract class BasePageState<Page extends BasePage> extends State<Page>
    with BasePageMixin {
  final loggerHelper = injector.get<LoggerHelper>();
  final errorHelper = injector.get<ErrorHelper>();

  @override
  void initState() {
    super.initState();
    onInitState();
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: onWillPop,
        child: buildPage(context),
      );

  Future<bool> onWillPop() async => true;

  @mustCallSuper
  void onInitState() {
    loggerHelper.info('Initializing state of [$runtimeType]');
  }

  @mustCallSuper
  void onDispose() {
    loggerHelper.info('Disposing [$runtimeType]');
  }

  void onError(Object? error) {
    if (error == null) {
      return;
    }
    errorHelper.handleError(error);
  }
}
