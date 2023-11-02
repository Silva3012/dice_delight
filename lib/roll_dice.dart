import 'dart:math';

import 'package:flutter/material.dart';

// Declare randomNumber globally so that it is created once
final randomNumber = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 1;

  // Roll dice function
  void diceRoll() {
    setState(() {
      currentDice = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
            onPressed: diceRoll,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice")),
      ],
    );
  }
}
