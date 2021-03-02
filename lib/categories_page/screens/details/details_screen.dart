import 'package:flutter/material.dart';
import 'package:online_grocery_system/categories_page/shoppinng_cart_button.dart';
import '../../product_class.dart';
import '../constants.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: CBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart_rounded),
          onPressed: () => shoppingCart(context),
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
