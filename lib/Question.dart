import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(  
      width: double.infinity,  //iska mtlb parent class me pura ka pura horizontal space occupy krna
      margin: EdgeInsets.all(10), //saare directoin se margin dena
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
