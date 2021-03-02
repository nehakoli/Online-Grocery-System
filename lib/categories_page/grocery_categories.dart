import 'package:flutter/material.dart';
import '../app/app/sign_in/sign_in_button.dart';
import 'Grocery_Categories/bakeryProducts.dart';
import 'Grocery_Categories/chocolates.dart';
import 'Grocery_Categories/cleaners.dart';
import 'Grocery_Categories/dairyProducts.dart';
import 'Grocery_Categories/frozenFoodBeverages.dart';
import 'Grocery_Categories/fruits.dart';
import 'Grocery_Categories/personalCare.dart';
import 'Grocery_Categories/snacks.dart';
import 'Grocery_Categories/spices.dart';
import 'Grocery_Categories/stationary.dart';
import 'Grocery_Categories/vegetables.dart';

class GroceryCategories extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Vegetables',
            textColor: Colors.black87,
            color: Colors.blue[100],
            onPressed: () => vegetables(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Fruits',
            textColor: Colors.black87,
            color: Colors.yellow[100],
            onPressed: () => fruits(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Dairy Products',
            textColor: Colors.black87,
            color: Colors.brown[100],
            onPressed: () => milkDairyProducts(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Spices',
            textColor: Colors.black87,
            color: Colors.red[100],
            onPressed: () => spices(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text:
                'Bakery Products', //sandwich loaves, dinner rolls, tortillas, bagels
            textColor: Colors.black87,
            color: Colors.green[100],
            onPressed: () => bakeryProducts(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text:
                'Frozen foods/Beverages', //waffles, vegetables, individual meals, ice cream
            textColor: Colors.black87,
            color: Colors.deepPurple[100],
            onPressed: () => frozenFoodBeverages(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Chocolates',
            textColor: Colors.black87,
            color: Colors.teal[100],
            onPressed: () => chocolates(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Snacks', //biscuits, Ketchup,
            textColor: Colors.black87,
            color: Colors.red[100],
            onPressed: () => snacks(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Personal Care', //shampoo, soap, hand soap, shaving cream
            textColor: Colors.black87,
            color: Colors.indigo[100],
            onPressed: () => personalCare(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text:
                'Cleaners', //all- purpose, laundry detergent, dish washing liquid/detergent
            textColor: Colors.black87,
            color: Colors.pink[50],
            onPressed: () => cleaners(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Stationery', //notebook, pen, pencil, eraser
            textColor: Colors.black87,
            color: Colors.orange[100],
            onPressed: () => stationary(context),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }

  void vegetables(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Vegetables(),
      ),
    );
  }

  void fruits(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Fruits(),
      ),
    );
  }

  void milkDairyProducts(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => MilkDairyProducts(),
      ),
    );
  }

  void spices(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Spices(),
      ),
    );
  }

  void bakeryProducts(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => BakeryProducts(),
      ),
    );
  }

  void frozenFoodBeverages(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => FrozenFoodBeverages(),
      ),
    );
  }

  void chocolates(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Chocolates(),
      ),
    );
  }

  void snacks(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Snacks(),
      ),
    );
  }

  void personalCare(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => PersonalCare(),
      ),
    );
  }

  void cleaners(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Cleaners(),
      ),
    );
  }

  void stationary(BuildContext context)
  {
    Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Stationary(),
      ),
    );
  }
}
