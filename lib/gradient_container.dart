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
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/dice-3.png',
                width: 200,
              ),
              OutlinedButton(
                  onPressed: diceRoll, child: const Text("Roll Dice")),
            ],
          ),
        ));
  }

  // Roll dice function
  void diceRoll() {
    print("Dice roll pressed!");
  }
}
