import 'package:flutter/material.dart';
import 'package:online_grocery_system/categories_page/grocery_categories.dart';
import 'package:online_grocery_system/categories_page/screens/constants.dart';
import 'package:online_grocery_system/categories_page/shoppinng_cart_button.dart';
import 'package:online_grocery_system/common_widgets/show_alert_dialog.dart';
import 'package:online_grocery_system/services/auth.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget
{
  Future<void> _signOut(BuildContext context)  async {
    try  {  //error handling
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut(); //we will use firebase to sign out
    }
    catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: 'Logout',
      content: 'Are you sure that you want to logout?',
      cancelActionText: 'Cancel',
      defaultActionText: 'Logout',
    );
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CATEGORIES'),
        leading: FlatButton(
          onPressed: () => _confirmSignOut(context),
          child: IconButton(
            icon: Icon(Icons.logout),
            color: Colors.white,
            onPressed: () => _confirmSignOut(context),
          ),
        ),
        actions: <Widget>[  //actions are placed to the top right corner in app bar
          FlatButton(
            onPressed: () {},
            child: IconButton(
              icon: Icon(Icons.shopping_cart_rounded),
              color: Colors.white,
              onPressed: () => shoppingCart(context),
            ),
          ),
          SizedBox(width: kDefaultPadding / 2)
        ], //<Widget>[]
      ),
      body: SingleChildScrollView(child: GroceryCategories()),
    );
  }
}
