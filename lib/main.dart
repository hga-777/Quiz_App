import 'package:flutter/material.dart';
import './Question.dart';  
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
    return _MyAppState();   //underscore lgane se private bn jaega
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      //yeh ek functoin h jo ki set class me rehta hai and anonymous function leta hai
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  //yeh show krne ke liye ki mera yeh state class statefulwidget se connected hai
  //ek widget bna rhe hai jisko base class se inherit kr rhe hai thats why 'extend' keyword use hua hai
// statelesswidget class material.dart file wale ka base class hai
  @override // --> Isliye likha jaat h taki pta chale ki hmlog jaan muj kr inbult class ko overwrite kiye h
  Widget build(BuildContext context) {
    var questions = [
      "Whats ur favourite Colour?",
      "Whats ur favourite Animal?"
    ];
    //class ke andr waale function ko method bolte hai aur yeh ek method hai
//yeha pr context ek object hai and BuildContext ek class hai material.dart file ka
// and build ek function hai jo ki ek widget return krta hai
    return MaterialApp(
      home: Scaffold(
        //it gives basic base design of the app
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(children: [
          //children is the list of widgets
          Question(questions[_questionIndex]),  
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text("Answer 1")),
          ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text(
                  "Answer 2")), //on pressed pr function call hoga yeh rk anaonymous function hai
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text("Answer 3")),
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text("Answer 4"))
        ]),
      ),
    ); //yeh ek widget hai pr isme arguement pass kr rhe hai
    //materialapp ek widget hai jo ki mera material.dart file me rehta hai

    //yeha pr hmlog ek class me arguements islye daale h kyuki yeh ek constructor h jiske pass bahut saara
    // arguements ho sakta h
    // MaterialApp({String s,int n}) is trh se rehte h and saare optional rehte hai
    //so while calling MaterialApp(s:"Raja Hritik") //iss trh se add krte h
  }
}
