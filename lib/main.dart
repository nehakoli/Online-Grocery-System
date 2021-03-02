import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_grocery_system/app/app/landing_page.dart';
import 'package:online_grocery_system/services/auth.dart';
import 'package:provider/provider.dart';

void main()
async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
 runApp(MyApp());
}

class MyApp extends StatelessWidget  //1st widget
{
  @override
  Widget build(BuildContext context)
  {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'Online Grocery',
        theme: ThemeData(
          primarySwatch: Colors.blue, //Color of app bar
        ),
        home: LandingPage(),
      ),
    );
  }
}


