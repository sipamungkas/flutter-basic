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
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const QuestionItem(
                        question:
                            'What is Graphic card produced by this vendor?',
                        category: 'graphic card',
                        image: 'assets/images/rtx.jpg'),
                    const SizedBox(height: 60),
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.blueAccent,
                      child: LayoutBuilder(builder: (context, constrains) {
                        return Center(
                          child: Container(
                            color: Colors.amber,
                            width: constrains.maxWidth * 0.8,
                            height: constrains.maxHeight / 2,
                            child: const Text('This is the text'),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const MeduaQueryWidgetExample(),
                  ],
                ),
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('tes');
            },
            child: const Icon(Icons.new_label),
          ),
        ));
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
