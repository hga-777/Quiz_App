import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //voidcallback means a function that takes no arguenent and return nothing
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Set the background color of the button
          ),
          child: Text("Answer 1"),
          onPressed: selectHandler,
        ));
  }
}
