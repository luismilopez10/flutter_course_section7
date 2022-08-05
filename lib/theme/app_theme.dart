import 'package:flutter/material.dart';

class AppTheme {
  static final Map<String, Color> _themeColors = {
    'light': const Color.fromRGBO(70, 70, 70, 1),
    'dark': const Color.fromRGBO(25, 25, 25, 1),
  };

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color Primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
      centerTitle: true,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color Primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      // color: primary,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: _themeColors['dark'],
  );
}
