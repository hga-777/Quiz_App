import 'package:flutter/material.dart';

// 'import krne ka mtlb kisi alg file se koi functionality ko copy krna
// 'is case me hmlog flutter package se material file ko import kiye hai
void main() {
  //if the function contain only one function in it then is trh v likh sakte void main() => runApp(MyApp());
  runApp(MyApp());
  //this is the function to run the app
}

class MyApp extends StatelessWidget {
  //ek widget bna rhe hai jisko base class se inherit kr rhe hai thats why 'extend' keyword use hua hai
// statelesswidget class material.dart file wale ka base class hai
  @override // --> Isliye likha jaat h taki pta chale ki hmlog jaan muj kr inbult class ko overwrite kiye h
  Widget build(BuildContext context) {
    //class ke andr waale function ko method bolte hai aur yeh ek method hai
//yeha pr context ek object hai and BuildContext ek class hai material.dart file ka
// and build ek function hai jo ki ek widget return krta hai
    return MaterialApp(
      home: Scaffold(
        //it gives basic base design of the app
        appBar: AppBar(title: Text("My First App")),
        body: Text("This is my default text"),
      ),
    ); //yeh ek widget hai pr isme arguement pass kr rhe hai
    //materialapp ek widget hai jo ki mera material.dart file me rehta hai

    //yeha pr hmlog ek class me arguements islye daale h kyuki yeh ek constructor h jiske pass bahut saara
    // arguements ho sakta h
    // MaterialApp({String s,int n}) is trh se rehte h and saare optional rehte hai
    //so while calling MaterialApp(s:"Raja Hritik") //iss trh se add krte h
  }
}
