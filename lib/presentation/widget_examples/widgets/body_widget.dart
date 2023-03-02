import 'package:basic/presentation/components/custom_button.dart';
import 'package:basic/presentation/navigation_example_screens/screen_one.dart';
import 'package:basic/presentation/navigation_example_screens/screen_two.dart';
import 'package:basic/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:flutter/material.dart';
import 'package:basic/presentation/widget_examples/widgets/question_item_widget.dart';

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenOne()));
                    },
                    icon: Icons.home,
                    iconColor: Colors.white),
                CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenTwo()));
                    },
                    icon: Icons.density_medium,
                    iconColor: Colors.white),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.separated(
                    scrollDirection:
                        width < 600 ? Axis.vertical : Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        QuestionItem(
                            question: questionList[index]['question'],
                            category: questionList[index]['category'],
                            image: questionList[index]['image']),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                          height: 8,
                        ),
                    itemCount: questionList.length))
          ],
        ));
  }
}
