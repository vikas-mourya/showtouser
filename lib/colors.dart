import 'dart:ui';

import 'package:flutter/material.dart';

class Colors {
  static const MaterialColor primary = const MaterialColor(0xFFB71C1C, const <int, Color>{
    50: const Color(0xFFB71C1C),
    100: const Color(0xFFB71C1C),
    200: const Color(0xFFB71C1C),
    300: const Color(0xFFB71C1C),
    400: const Color(0xFFB71C1C),
    500: const Color(0xFFB71C1C),
    600: const Color(0xFFB71C1C),
    700: const Color(0xFFB71C1C),
    800: const Color(0xFFB71C1C),
    900: const Color(0xFFB71C1C),
  });

  static Color redDark = HexColor("#B71C1C");

  static Color greyLight = HexColor("#F5F5F5");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
