import 'package:flutter/material.dart';
import 'package:online_grocery_system/Products/Snacks-Products.dart';
import 'package:online_grocery_system/categories_page/screens/details/details_screen.dart';
import '../../constants.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
               //itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 90.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: snacksproducts[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                             //product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
