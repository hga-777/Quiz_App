import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartHandler;
  Result(this.resultScore, this.restartHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 65)
      resultText = "You are Baap";
    else if (resultScore >= 45)
      resultText = "You are still a kid";
    else if (resultScore >= 25)
      resultText = "Bas bache hue ho";
    else
      resultText = "Tu toh gya bete";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    String phrase = resultPhrase;
    return Center(
      child: Column(
        children: [
          Text(
            phrase,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restartHandler,
            child: Text('Restart Quiz!!',style: TextStyle(color: const Color.fromARGB(255, 32, 121, 35),),),
          )
        ],
      ),
    );
  }
}
