// ignore_for_file: empty_constructor_bodies

import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:first_app/styledText.dart';

import 'package:first_app/dice_Roller.dart';

var startAlignment =
    Alignment.topLeft; //can be final so that it cannot be re-assigned.
var endAlignment = Alignment.bottomLeft; //can be const

class GradientContainer extends StatelessWidget {


   const GradientContainer( this.color1, this.color2, {super.key}) /* :super(key:key) */;

  GradientContainer.purple({super.key})
      : color1 = Color.fromARGB(255, 14, 226, 183),
        color2=const Color.fromARGB(255, 231, 232, 243);

  final Color color1;
  final Color color2;

  

 

  @override
  Widget build(BuildContext context) {
    //here build method will return widget.

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black12,Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),

      //it will take only string value other dataypes are not allowed.
    );
  }
}
