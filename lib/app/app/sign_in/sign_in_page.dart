import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'email_sign_in_page.dart';
import 'sign_in_manager.dart';
import 'package:online_grocery_system/common_widgets/show_exception_alert_dialog.dart';
import 'package:online_grocery_system/services/auth.dart';
import 'package:provider/provider.dart';
import 'sign_in_button.dart';
import 'social_sign_in_button.dart';

class SignInPage extends StatelessWidget
{
  const SignInPage({
    Key key,
    @required this.manager,
    @required this.isLoading,
  }) : super(key: key);
  final SignInManager manager;
  final bool isLoading;

  static Widget create(BuildContext context)
  {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return ChangeNotifierProvider<ValueNotifier<bool>>(
      create: (_) => ValueNotifier<bool>(false),
      child: Consumer<ValueNotifier<bool>>(
        builder: (_, isLoading, __) => Provider<SignInManager>(
          create: (_) => SignInManager(auth : auth, isLoading: isLoading),
          child: Consumer<SignInManager>(
            builder: (_, manager, __) =>
                SignInPage(manager: manager, isLoading: isLoading.value),
          ),
        ),
      ),
    );
  }

  void _showSignInError(BuildContext context,Exception exception)
  {
    if (exception is FirebaseException &&
        exception.code == 'ERROR_ABORTED_BY_USER') {
      return;
    }
    showExceptionAlertDialog(
      context,
      title: 'Sign in failed',
      exception: exception,
    );
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    try //error handling
    {
      await manager.signInAnonymously();
    }
    on Exception catch (e) {
      _showSignInError(context, e);
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try //error handling
    {
      await manager.signInWithGoogle();
    }
    on Exception catch (e) {
        _showSignInError(context, e);
    }
  }

  void _signInWithEmail(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
       fullscreenDialog: true,
       builder: (context) => EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Online Grocery System'), //blue color bar
        elevation: 10.0, //shadow below appbar
      ),
      //AppBar is a customizable widget that can be placed at the top of the screen
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(16.0),
      //padding: EdgeInsets.only(top: 300.0, left: 16.0, right: 16.0), //position of containers on the screen
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //to move the widgets in vertical axis
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 50.0,
            child: _buildHeader(),
          ),
          SizedBox(height: 50.0),
          SocialSignInButton(
            assetName: 'App Images/logos/google-logo.png',
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: isLoading ? null : () => _signInWithGoogle(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.white,
            color: Colors.red[600],
            onPressed: isLoading ? null : () => _signInWithEmail(context),
          ),
          SizedBox(height: 8.0),
          Text(
            'OR',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Guest sign in',
            textColor: Colors.black87,
            color: Colors.yellow,
            onPressed: isLoading ? null : () => _signInAnonymously(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader()
  {
    if(isLoading)
      {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    return Text(
      'Sign In',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

