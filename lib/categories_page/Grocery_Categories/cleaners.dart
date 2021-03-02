import 'package:flutter/material.dart';
import 'package:online_grocery_system/categories_page/screens/constants.dart';
import 'package:online_grocery_system/categories_page/screens/details/details_screen.dart';
import 'package:online_grocery_system/categories_page/screens/home/components/categories.dart';
import 'package:online_grocery_system/categories_page/screens/home/components/item_card.dart';

import 'package:online_grocery_system/Products/Cleaners-Products.dart';
import '../shoppinng_cart_button.dart';

class Cleaners extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CLEANERS'),
        leading: FlatButton(
          onPressed: () => Navigator.pop(context),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: <Widget>[ //actions are placed to the top right corner in app bar
          FlatButton(
            onPressed: () {},
            child: IconButton(
              icon: Icon(Icons.shopping_cart_rounded),
              color: Colors.white,
              onPressed: () => shoppingCart(context),
            ),
          ),
        ], //<Widget>[]
      ),
      body: buildGrid(),
    );
  }

  Widget buildGrid()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: cleanersproducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: cleanersproducts[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: cleanersproducts[index],
                        ),
                      )),
                )),
          ),
        ),
      ],
    );
  }
}
