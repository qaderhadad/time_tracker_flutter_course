import "package:flutter/material.dart";
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_page.dart';

void main(){  //Entry Point for the app
  runApp(MyApp());  //Takes root widget as entry
}

//Define root widget
class MyApp extends StatelessWidget {
  @override //Override superClass build() method
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Tracker",
      theme: ThemeData(
        primarySwatch: Colors.indigo
    ),
      home: SignInPage(),
    );
  }
}
