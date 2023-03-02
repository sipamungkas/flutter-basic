import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;
  const ListItem({super.key, required this.title, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amberAccent),
      child: ListTile(
        title: Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              decoration: _isSelected
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        subtitle: Text(
          'item number ${widget.index}',
          style: TextStyle(
              decoration: _isSelected
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        leading: Checkbox(
            value: _isSelected,
            onChanged: (value) {
              setState(() {
                _isSelected = value ?? false;
              });
            }),
      ),
    );
    ;
  }
}
