import 'package:flutter/material.dart';
import 'package:dice_delight/gradient_container.dart';

main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: GrandientContainer([
      Color.fromARGB(255, 223, 27, 27),
      Color.fromARGB(255, 141, 47, 47),
    ])),
  ));
}
