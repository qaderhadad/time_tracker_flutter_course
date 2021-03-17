
import 'package:flutter/material.dart';
//This class was created in order to make the code reusable
class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.child,
    this.color,
    this.borderRadius: 2.0, //Using (:) to set default values
    this.height: 50.0,  //Default value
    this.onPressed
  }) : assert(borderRadius != null);  // Assertions are useful runtime checks...
  final Widget child;                 // ...to highlight programming error...
  final Color color;                  // ...to make debugging easier.
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      //Deprecated Class (Replaced with another class in new Flutter Version)
      child: RaisedButton(
        //Button is disabled until onPressed is added
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed, //() should stay empty, (null) to disable button
      ),
    );
  }
}
