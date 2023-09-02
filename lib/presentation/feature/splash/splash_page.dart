import 'dart:async';

import 'package:flutter/material.dart';
import 'package:joke_app/presentation/resources/app_colors.dart';

import '../../app_routes.dart';
import '../../base/base_page.dart';
import '../home/home_page.dart';

class SplashPage extends BasePage {
  const SplashPage({Key? key}) : super(key: key);

  static ScreenRoute get route => ScreenRoute(
        name: '/',
        builder: (_) => const SplashPage(),
      );

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage> {
  late Timer _timer;

  @override
  void onInitState() {
    super.onInitState();
    _timer = Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        HomePage.route.fade(),
      );
    });
  }

  @override
  void onDispose() {
    super.onDispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colors.accent,
        body: SafeArea(
          child: buildBody(context),
        ),
      );

  @override
  Widget buildBody(BuildContext context) => const Center(
        child: Center(
          child: Text("Joke App"),
        ),
      );
}
