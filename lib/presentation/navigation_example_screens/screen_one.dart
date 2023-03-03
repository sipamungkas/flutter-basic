import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              // Navigator.pop(context);
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text(
              'Go Back',
              style: TextStyle(color: Colors.greenAccent),
            )),
      ),
    );
  }
}
