import 'package:basic/presentation/counter/counter_screen.dart';
import 'package:basic/presentation/list/list_screen.dart';
import 'package:basic/presentation/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: const [
        WidgetExamplesScreen(),
        CounterScreen(),
        ListScreen()
      ]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedFontSize: 12,
          selectedItemColor: Colors.amber,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Examples',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.numbers),
              label: 'Counter',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List')
          ]),
    );
  }
}