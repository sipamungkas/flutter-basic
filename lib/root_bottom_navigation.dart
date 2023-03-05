import 'package:basic/application/theme_service.dart';
import 'package:basic/presentation/counter/counter_screen.dart';
import 'package:basic/presentation/list/list_screen.dart';
import 'package:basic/presentation/theme_animation/theme_animation_screen.dart';
import 'package:basic/presentation/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ThemeAnimationScreen(),
        CounterScreen(),
        ListScreen(),
        WidgetExamplesScreen(),
      ]),
      bottomNavigationBar: Consumer<ThemeService>(
        builder: (context, themeService, child) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedFontSize: 12,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    themeService.isDarkModeOn ? Icons.wb_cloudy : Icons.sunny),
                label: 'Sun & Moon'),
            const BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Examples',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.numbers),
              label: 'Counter',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'List'),
          ],
        ),
      ),
    );
  }
}
