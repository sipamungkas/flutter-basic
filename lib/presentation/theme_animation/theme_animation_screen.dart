import 'package:basic/application/theme_service.dart';
import 'package:basic/presentation/theme_animation/widgets/animated_star.dart';
import 'package:basic/presentation/theme_animation/widgets/bottom_card.dart';
import 'package:basic/presentation/theme_animation/widgets/moon.dart';
import 'package:basic/presentation/theme_animation/widgets/sun.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Animation'),
      ),
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: themeService.isDarkModeOn
                              ? Colors.black54
                              : Colors.grey,
                          offset: const Offset(0, 3),
                          blurRadius: 5,
                          spreadRadius: 3),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: themeService.isDarkModeOn
                            ? const [
                                Color(0xFF94A9FF),
                                Color(0xFF6B66CC),
                                Color(0xFF200F75)
                              ]
                            : const [
                                Color(0xDDFFFA66),
                                Color(0xDDFFA057),
                                Color(0xDD940B99)
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
                child: Stack(children: [
                  AnimatedStar(
                    opacity: themeService.isDarkModeOn ? 1 : 0,
                    top: 150,
                    right: 50,
                  ),
                  AnimatedStar(
                    opacity: themeService.isDarkModeOn ? 1 : 0,
                    top: 80,
                    left: 60,
                  ),
                  AnimatedStar(
                    opacity: themeService.isDarkModeOn ? 1 : 0,
                    top: 150,
                    left: 50,
                  ),
                  AnimatedStar(
                    opacity: themeService.isDarkModeOn ? 1 : 0,
                    top: 50,
                    right: 100,
                  ),
                  AnimatedStar(
                    opacity: themeService.isDarkModeOn ? 1 : 0,
                    top: 100,
                    right: 200,
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    top: themeService.isDarkModeOn ? 100 : 130,
                    right: themeService.isDarkModeOn ? 100 : -50,
                    curve: Curves.decelerate,
                    child: AnimatedOpacity(
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      duration: const Duration(milliseconds: 300),
                      child: const Moon(),
                    ),
                  ),
                  AnimatedPadding(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.only(
                        top: themeService.isDarkModeOn ? 110 : 50),
                    child: const Center(child: Sun()),
                  ),
                  BottomCard(
                      isDarkModeOn: themeService.isDarkModeOn,
                      toggleTheme: themeService.toggleTheme)
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
