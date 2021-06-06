import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_3/Sign_in%20form.dart';

// import 'package:flutter_signin_button/flutter_signin_button.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: signIn(), 
      ),
    );
  }
}