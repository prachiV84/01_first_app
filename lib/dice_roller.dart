import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
 const  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice2.png';
  var currentDiceRoll=2;
   void rollDice() {
    // ignore: unused_local_variable
    
    setState(() {
      
      currentDiceRoll = Random().nextInt(6) + 1;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice$currentDiceRoll.png',
        width: 200,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Color.fromARGB(255, 22, 196, 155),
            textStyle: const TextStyle(
              fontSize: 28,
            )),
        child: const Text('Roll dice'),
      )
    ]);
  }
}
