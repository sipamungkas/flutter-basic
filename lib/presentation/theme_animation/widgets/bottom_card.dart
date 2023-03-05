import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final bool isDarkModeOn;
  final Function() toggleTheme;
  const BottomCard(
      {super.key, required this.isDarkModeOn, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 225,
        width: double.infinity,
        decoration: BoxDecoration(
            color: isDarkModeOn ? Colors.grey[800] : Colors.white,
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(15))),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            isDarkModeOn ? 'To Dark?' : 'To Bright?',
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            isDarkModeOn ? 'let the sun rise' : 'let it be night',
            style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Switch(
              value: isDarkModeOn,
              onChanged: (_) {
                toggleTheme();
              })
        ]),
      ),
    );
  }
}
