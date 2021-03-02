import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocery_system/app/app/home_page.dart';
import 'package:online_grocery_system/app/app/sign_in/sign_in_page.dart';
import 'package:online_grocery_system/services/auth.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User>(  //streams are fundamentally asynchronous
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          if(user==null) {
            return SignInPage.create(context);
          }
          return HomePage();
        }
        else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(), //to display when it takes time to load
            ),
          );
        }
      },
    );
  }
}
