import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
        elevation: 2.0,
      ),
      body: _buildContent());
  }
}

Widget _buildContent(){ //underscore(_) = Private, accessible only at File Level
  return Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      // Takes a list of widgets
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.orange,
          child: SizedBox(
            height: 100.0,
          ),
        ),
        SizedBox(height: 8.0),  //SizedBox to add padding between Containers
        Container(
          color: Colors.red,
          child: SizedBox(
            height: 100.0,
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          color: Colors.purple,
          child: SizedBox(
            height: 100.0,
          ),
        ),
      ],
    ),
  );
}