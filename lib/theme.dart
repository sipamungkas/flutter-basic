import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.amber;

  static const _primaryColorDark = Colors.lightGreen;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(backgroundColor: _primaryColorLight),
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light));

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorDark,
      ));
}
