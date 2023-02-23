import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map> questionList = [
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
        title: 'Question List',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Question Task'),
          ),
          body: BodyWidget(questionList: questionList),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('tes');
            },
            child: const Icon(Icons.new_label),
          ),
        ));
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.questionList,
  });

  final List<Map> questionList;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.shortestSide;
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            scrollDirection: width < 600 ? Axis.vertical : Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => QuestionItem(
                question: questionList[index]['question'],
                category: questionList[index]['category'],
                image: questionList[index]['image']),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 8,
                  height: 8,
                ),
            itemCount: questionList.length));
  }
}

class MeduaQueryWidgetExample extends StatelessWidget {
  const MeduaQueryWidgetExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.green,
      child: const Text(
          'Media Query in widget, we can not use it without builder, do export it into a widget'),
    );
  }
}

class QuestionItem extends StatelessWidget {
  final String question;
  final String category;
  final String image;

  const QuestionItem(
      {super.key,
      required this.question,
      required this.category,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: 150,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        const SizedBox(
          height: 8,
        ),
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
