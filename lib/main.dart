import 'package:first_ap/answer.dart';
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
    return _MyAppState(); //underscore lgane se private bn jaega
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    //now yeha pr map ka concept use karenge jisme first element key hoga and next element value
    {
      'questionText': 'What\'s your favourite topic?',
      'answer': ['Memes', 'Roast', 'Mukbang', 'Vlogs']
    },
    {
      'questionText': 'What\'s your favourite genes?',
      'answer': ['Russian', 'European', 'American', 'Australian']
    },
    {
      'questionText': 'What\'s your favourite snack?',
      'answer': ['Kurkure', 'Mad Angles', 'Lays', 'Uncle Chips']
    },
    {
      'questionText': 'What\'s your favourite tv show?',
      'answer': ['TMKOC', 'Doraemon', 'Sinchan', 'Anupama']
    },
  ];
  void _answerQuestion() {
    setState(() {
      //yeh ek functoin h jo ki set class me rehta hai and anonymous function leta hai
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
        body: (_questionIndex < questions.length)
            ? Column(children: [
                //children is the list of widgets
                Question(
                  questions[_questionIndex]['questionText'].toString(),
                ),
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  //.map method is used jiska kaam hai list ke hr ek element ko change krke koi aur cheez bna dena
                  return Answer(_answerQuestion, answer);
                }).toList() //.toList krne ka sense ki iska o/p mera list me return ho
                // spread operator (...) ka kaam hai list ke values ko ek ek krke batna
              ])
            : const Center(    //agr index question se zyzda ho gya toh yeh print hoga.
                child: Text('Chl beta ab nikal!!'),
              ),
      ),
    ); //yeh ek widget hai pr isme arguement pass kr rhe hai
    //materialapp ek widget hai jo ki mera material.dart file me rehta hai

    //yeha pr hmlog ek class me arguements islye daale h kyuki yeh ek constructor h jiske pass bahut saara
    // arguements ho sakta h
    // MaterialApp({String s,int n}) is trh se rehte h and saare optional rehte hai
    //so while calling MaterialApp(s:"Raja Hritik") //iss trh se add krte h
  }
}
