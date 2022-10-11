import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog(
      {Key? key,
      required this.title,
      required this.content,
      this.cancelButton = false})
      : super(key: key);
  final String title;
  final String content;
  final bool cancelButton;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        Row(
          children: [
            TextButton(onPressed: () {}, child: const Text('Cancel')),
            TextButton(onPressed: () {}, child: const Text('Ok')),
          ],
        )
      ],
    );
  }
}
