import 'package:flutter/material.dart';
import 'email_sign_in_form_change_notifier.dart';

class EmailSignInPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In'), //blue color bar
        elevation: 2.0, //shadow below appbar
      ),
      //AppBar is a customizable widget that can be placed at the top of the screen
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
              child: EmailSignInFormChangeNotifier.create(context),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
