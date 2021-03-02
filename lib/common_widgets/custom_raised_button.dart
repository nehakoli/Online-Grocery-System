import 'package:flutter/material.dart';

class CustomRaiseButton extends StatelessWidget
{
  CustomRaiseButton({
    this.child,
    this.color,
    this.borderRadius: 40.0,
    this.height: 50.0,
    this.onPressed,
  });

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,  //Background color of widget
        disabledColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed, //defines implementation ,
      ),
    );
  }
}
