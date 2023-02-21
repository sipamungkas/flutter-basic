import 'dart:ffi';

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
        body: Container(
            width: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.blueAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Text(
                        'first row- first row - first row - first row - first row - first row - first row',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'Second',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      color: Colors.purple,
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      color: Colors.amberAccent,
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.green,
                  child: const Text('first Column'),
                ),
                const SizedBox(height: 50),
                Container(
                  color: Colors.purple,
                  child: const Text('Second Column'),
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            const snackBar = SnackBar(content: Text('tes'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.new_label_rounded),
        ));
  }
}
