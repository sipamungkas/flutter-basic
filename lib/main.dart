import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Basic',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Title'),
            centerTitle: true,
          ),
          body: const SnackbarWidget(),
        ));
  }
}

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
            ),
            width: 200,
            child: const Center(
              child: Text(
                'hello flutter',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.amber,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            const snackBar = SnackBar(content: Text('tes'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.new_label_rounded),
        ));
  }
}
