import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultPhrase{
    String resultText;
    if(resultScore>=65) resultText="You are Baap";
    else if(resultScore>=45) resultText="You are still a kid";
    else if(resultScore>=25) resultText="Bas bache hue ho";
    else resultText = "Tu toh gya bete";
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    String phrase = resultPhrase;
    return Center(
      child: ValueListenableBuilder(   //yeh ek child h center ka jo ki new values of resultScore ke liye dobara se build kr rha h 
        valueListenable: ValueNotifier(resultScore), //yeh changes ko bta rha h 
        builder: (context, value, child) { //yeh tabhhi invoked hoga jb mera changes dekhne ko milega
          return Text(
        phrase,
        style: const TextStyle(
          fontWeight: FontWeight.bold, 
          fontStyle: FontStyle.italic,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      );
        },
      ),
    );
  }
}







