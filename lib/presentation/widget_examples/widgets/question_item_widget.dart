import 'package:flutter/material.dart';

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
