import 'package:basic/presentation/counter/counter_screen.dart';
import 'package:basic/presentation/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map> questionList = [
    {
      'category': 'Science',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
    {
      'category': 'Tech',
      'image': 'assets/images/rtx.jpg',
      'question': 'What is the Brand for that feature?',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
      title: 'Question List',
      // home: WidgetExamplesScreen(
      //   questionList: questionList,
      // )
      home: const CounterScreen(),
    );
  }
}
