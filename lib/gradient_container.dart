import 'package:flutter/material.dart';
import 'package:dice_delight/styled_text.dart';

const beginAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GrandientContainer extends StatelessWidget {
  const GrandientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("Hello Silva's World!"),
      ),
    );
  }
}
