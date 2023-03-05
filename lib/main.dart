import 'package:basic/presentation/navigation_example_screens/screen_one.dart';
import 'package:basic/presentation/navigation_example_screens/screen_two.dart';
import 'package:basic/root_bottom_navigation.dart';
import 'package:basic/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        title: 'Question List',
        home: const RootBottomNavigation(),
        routes: <String, WidgetBuilder>{
          '/Root': (BuildContext context) => const RootBottomNavigation(),
          '/ScreenOne': (BuildContext context) => const ScreenOne(),
          '/ScreenTwo': (BuildContext context) => const ScreenTwo()
        });
  }
}
