import 'package:flutter/material.dart';
import 'package:online_grocery_system/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaiseButton
{
  SignInButton({  //constructor
    @required String text,
    Color color,
    VoidCallback onPressed,
    Color textColor,
  }) : assert(text!=null),
        super(   //super constructor
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 17.0),
        ),
        color: color,
        onPressed: onPressed,
      );
}