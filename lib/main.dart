import 'package:basic/root_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
      title: 'Question List',
      // home: WidgetExamplesScreen(
      //   questionList: questionList,
      // )
      home: const RootBottomNavigation(),
    );
  }
}
