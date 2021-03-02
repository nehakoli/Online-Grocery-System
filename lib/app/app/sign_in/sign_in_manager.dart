import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocery_system/services/auth.dart';

class SignInManager
{
  SignInManager({@required this.auth, @required this.isLoading});
  final AuthBase auth;
  final ValueNotifier<bool> isLoading;

  Future<User> _signIn(Future<User> Function() signInMethod) async{
    try{
      isLoading.value = true;
      return await signInMethod();
    } catch (e){
      isLoading.value = false;
      rethrow;
    }
  }

  Future<User> signInAnonymously() async => await _signIn(auth.signInAnonymously); //passing functions to the argument of other functions
  Future<User> signInWithGoogle() async => await _signIn(auth.signInWithGoogle);
  //our sign_in_page will not call _setIsLoading method directly but it will call the above 2 methods to sign in
}















