import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.amber;

  static const _primaryColorDark = Colors.lightGreen;

  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: _primaryColorLight),
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorLight));

  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorDark, brightness: Brightness.dark));
}
