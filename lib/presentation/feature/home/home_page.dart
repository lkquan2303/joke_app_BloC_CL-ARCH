import 'package:flutter/material.dart';

import '../../app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static ScreenRoute get route => ScreenRoute(
        name: '/home',
        builder: (_) => const HomePage(),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
