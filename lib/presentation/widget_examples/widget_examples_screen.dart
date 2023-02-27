import 'package:flutter/material.dart';
import 'package:basic/presentation/widget_examples/widgets/body_widget.dart';

class WidgetExamplesScreen extends StatelessWidget {
  final List<Map> questionList;
  const WidgetExamplesScreen({super.key, required this.questionList});

  @override
  Widget build(BuildContext context) {
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
