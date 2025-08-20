import 'package:flutter/material.dart';
import 'dart:math';

final randomizer=Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
   var currentDiceRoll=3;
    void rollDice()
    { 
      
      setState(() {
        currentDiceRoll=randomizer.nextInt(6)+1;
        
      });
       
    }
  @override
  Widget build(context){
    return Column( 
              mainAxisSize: MainAxisSize.min ,
              children :[
                Image.asset('assets/dice-images/dice-$currentDiceRoll.png',
                  width : 200
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: rollDice, //anonymous function
                  style :TextButton.styleFrom(
                    // padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white, 
                    textStyle: 
                      TextStyle(
                       fontSize : 28
                       ) 
                      ),
                  child : const Text('Roll Dice')
                  
                ),

            ]);
  }
}