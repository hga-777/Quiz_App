import 'package:first_ap/Question.dart';
import 'package:first_ap/answer.dart';
import 'package:first_ap/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// 'import krne ka mtlb kisi alg file se koi functionality ko copy krna
// 'is case me hmlog flutter package se material file ko import kiye hai
void main() {
  //if the function contain only one function in it then is trh v likh sakte void main() => runApp(MyApp());
  runApp(MyApp());
  //this is the function to run the app
}

class MyApp extends StatefulWidget {
  //it consists of two classes
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //underscore lgane se private bn jaega
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //now yeha pr map ka concept use karenge jisme first element key hoga and next element value
    {
      'questionText': 'What\'s your favourite topic?',
      'answer': [
        {'text': 'Memes', 'score': 20},
        {'text': 'Roast', 'score': 15},
        {'text': 'Mukbang', 'score': 5},
        {'text': 'Vlogs', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite genes?',
      'answer': [
        {'text': 'Russian', 'score': 20},
        {'text': 'American', 'score': 15},
        {'text': 'European', 'score': 15},
        {'text': 'Asian', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite snack?',
      'answer': [
        {'text': 'Samosa', 'score': 20},
        {'text': 'Chole Bhature', 'score': 20},
        {'text': 'Momos', 'score': 5},
        {'text': 'Rolls', 'score': 15}
      ]
    },
    {
      'questionText': 'What\'s your favourite tv show?',
      'answer': [
        {'text': 'TMKOC', 'score': 18},
        {'text': 'Doraemon', 'score': 15},
        {'text': 'CID', 'score': 5},
        {'text': 'Anupama', 'score': -2}
      ]
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;
  
  void _restart() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      //yeh ek functoin h jo ki set class me rehta hai and anonymous function leta hai
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      debugPrint('We have more questions!!');
    } else {
      debugPrint('we are done!!!');
    }
  }

  //yeh show krne ke liye ki mera yeh state class statefulwidget se connected hai
  //ek widget bna rhe hai jisko base class se inherit kr rhe hai thats why 'extend' keyword use hua hai
// statelesswidget class material.dart file wale ka base class hai
  @override // --> Isliye likha jaat h taki pta chale ki hmlog jaan muj kr inbult class ko overwrite kiye h
  Widget build(BuildContext context) {
    // this is const means it does not change at compile time
    //class ke andr waale function ko method bolte hai aur yeh ek method hai
//yeha pr context ek object hai and BuildContext ek class hai material.dart file ka
// and build ek function hai jo ki ek widget return krta hai
    return MaterialApp(
      home: Scaffold(
        //it gives basic base design of the app
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restart),
      ),
    ); //yeh ek widget hai pr isme arguement pass kr rhe hai
    //materialapp ek widget hai jo ki mera material.dart file me rehta hai

    //yeha pr hmlog ek class me arguements islye daale h kyuki yeh ek constructor h jiske pass bahut saara
    // arguements ho sakta h
    // MaterialApp({String s,int n}) is trh se rehte h and saare optional rehte hai
    //so while calling MaterialApp(s:"Raja Hritik") //iss trh se add krte h
  }
}
