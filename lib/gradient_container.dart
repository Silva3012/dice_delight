import 'package:dice_delight/roll_dice.dart';
import 'package:flutter/material.dart';

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
          child: RollDice(),
        ));
  }
}
