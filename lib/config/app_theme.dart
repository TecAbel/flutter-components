import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
  );
}
