import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.background,
    required this.surface,
    required this.accent,
    required this.text,
  });

  final Color background;
  final Color surface;
  final Color accent;
  final Color text;
}

const colorsLight = AppColors(
  background: Colors.white,
  surface: Colors.white,
  accent: Color.fromARGB(255, 255, 233, 136),
  text: Colors.black,
);

const colorsDark = AppColors(
  background: Colors.white,
  surface: Color(0xFF222222),
  accent: Colors.white,
  text: Colors.white,
);

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
    }
  }
}
