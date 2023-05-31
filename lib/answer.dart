import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //voidcallback means a function that takes no arguenent and return nothing
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(
                255, 9, 2, 86), // Set the background color of the button
            textStyle: TextStyle(color: Color.fromARGB(255, 213, 244, 101)),
          ),
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
