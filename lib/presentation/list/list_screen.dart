import 'package:basic/presentation/list/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> exampleList = [
      'example',
      'list',
      'item',
      'list',
      'haha',
      'example',
      'list',
      'item',
      'list',
      'haha',
      'example',
      'list',
      'item',
      'list',
      'haha'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
              itemCount: exampleList.length,
              separatorBuilder: (context, index) => const Divider(
                    height: 16,
                    color: Colors.transparent,
                  ),
              itemBuilder: (context, index) {
                return ListItem(
                  title: exampleList[index],
                  index: index,
                );
              }),
        ));
  }
}
