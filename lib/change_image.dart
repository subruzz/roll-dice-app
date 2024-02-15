import 'package:flutter/material.dart';
import 'dart:math';

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State<ChangeImage> createState() => _ChangeImageState();
  
}
//this is feature thing check
class _ChangeImageState extends State<ChangeImage> {
  final randomNumbers = Random();
  var diceRoll = 6;

  void rollDice() {
    setState(() {
      diceRoll = randomNumbers.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$diceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 173, 152, 152),
          ),
          child: const Text(
            "Roll the F..ing Dice",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
