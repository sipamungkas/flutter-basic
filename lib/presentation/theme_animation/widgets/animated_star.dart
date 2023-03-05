import 'package:basic/presentation/theme_animation/widgets/star.dart';
import 'package:flutter/material.dart';

class AnimatedStar extends StatelessWidget {
  final double opacity;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  const AnimatedStar(
      {super.key,
      required this.opacity,
      this.left,
      this.right,
      this.bottom,
      this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 200),
        child: const Star(),
      ),
    );
  }
}
