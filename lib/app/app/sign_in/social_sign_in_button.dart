import 'package:flutter/material.dart';
import 'package:online_grocery_system/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaiseButton
{
  SocialSignInButton({  //constructor
    @required String assetName,
    @required String text,
    Color color,
    VoidCallback onPressed,
    Color textColor,
  }) :  assert(text!=null),
        assert(assetName != null),
        super(   //super constructor
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(assetName),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0,),
            ),
            Opacity(
              opacity: 0.0,
              child: Image.asset(assetName),
            ),
          ],
        ),
        color: color,
        onPressed: onPressed,
      );
}