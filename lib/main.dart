import 'package:flutter/material.dart';

// 'import krne ka mtlb kisi alg file se koi functionality ko copy krna
// 'is case me hmlog flutter package se material file ko import kiye hai
void main() {
  runApp(MyApp());
  //this is the function to run the app
}

class MyApp extends StatelessWidget {
  // MyApp({super.key});
  //ek widget bna rhe hai jisko base class se inherit kr rhe hai thats why 'extend' keyword use hua hai
// statelesswidget class material.dart file wale ka base class hai
  // @override
  Widget build(BuildContext context) {
    //class ke andr waale function ko method bolte hai aur yeh ek method hai
//yeha pr context ek object hai and BuildContext ek class hai material.dart file ka
// and build ek function hai jo ki ek widget return krta hai
    return  MaterialApp(
      home: Text('Hello!'),
    ); //yeh ek widget hai pr isme arguement pass kr rhe hai
    //materialapp ek widget hai jo ki mera material.dart file me rehta hai
  }
}
