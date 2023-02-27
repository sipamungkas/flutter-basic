import 'package:flutter/material.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('AlertDialog Title'),
              content: const Text('AlertDialog description'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.red),
          ),
          child: const Text('Show Dialog'),
        ),
        IconButton(
            onPressed: () => debugPrint('icon on press'),
            icon: const Icon(Icons.plumbing)),
        Switch(
            value: true,
            onChanged: (value) {
              debugPrint(value.toString());
            })
      ],
    );
  }
}
