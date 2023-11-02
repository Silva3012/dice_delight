import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.greetingText, {super.key});

  final String greetingText;

  @override
  Widget build(context) {
    return Text(
      greetingText,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
