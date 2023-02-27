import 'package:flutter/material.dart';

class MeduaQueryWidgetExample extends StatelessWidget {
  const MeduaQueryWidgetExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.green,
      child: const Text(
          'Media Query in widget, we can not use it without builder, do export it into a widget'),
    );
  }
}
