import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Question List',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Question Task'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: QuestionItem(
              question: 'Where is your home?',
              category: 'address',
            ),
          ),
        ));
  }
}

class QuestionItem extends StatelessWidget {
  final String question;
  final String category;

  const QuestionItem(
      {super.key, required this.question, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.grey),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              category,
              style: const TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        )
      ],
    );
  }
}
