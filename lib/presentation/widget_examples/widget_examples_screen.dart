import 'package:flutter/material.dart';
import 'package:basic/presentation/widget_examples/widgets/body_widget.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
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
    );
  }
}
