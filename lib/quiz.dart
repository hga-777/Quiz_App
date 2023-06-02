import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

typedef AnswerCallBack = void Function(int);   //voidcallback ke wagah se void function me argument nhi jaa rha tha 

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final AnswerCallBack answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //children is the list of widgets
      Question(
        questions[questionIndex]['questionText'].toString(),
      ),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        //.map method is used jiska kaam hai list ke hr ek element ko change krke koi aur cheez bna dena
        return Answer(
            () => answerQuestion(answer['score'] as int), answer['text'] as String);
      }).toList() //.toList krne ka sense ki iska o/p mera list me return ho
      // spread operator (...) ka kaam hai list ke values ko ek ek krke batna
    ]);
  }
}
