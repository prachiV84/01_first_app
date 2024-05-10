// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return const Text(
      'hello world',
      style: TextStyle(
        color: Color.fromARGB(255, 234, 237, 240),
        fontSize: 28,
      ),
    );
  }
}
