import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_page.dart';

//Entry Point for the app
void main() async {  // (async) bc we're using an Asynchronous method (await)
  WidgetsFlutterBinding.ensureInitialized();  //This is a MUST.
  await Firebase.initializeApp(); //Wait for Future to complete
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
