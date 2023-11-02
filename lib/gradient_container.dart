import 'package:dice_delight/styled_text.dart';
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-3.png',
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
          ),
        ));
  }

  // Roll dice function
  void diceRoll() {
    print("Dice roll pressed!");
  }
}
