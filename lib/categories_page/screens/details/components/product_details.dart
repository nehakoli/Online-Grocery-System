import 'package:flutter/material.dart';
import 'package:online_grocery_system/app/app/sign_in/sign_in_button.dart';
import 'package:online_grocery_system/categories_page/screens/details/components/cart_counter.dart';
import 'package:online_grocery_system/common_widgets/show_alert_dialog.dart';
import '../../../product_class.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50.0),
              Text(
                product.description,
                style: TextStyle(height: 2),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CartCounter(),
                  SignInButton(
                    text: 'ADD TO CART',
                    textColor: Colors.white,
                    color: product.color,
                    onPressed: () => showAlertDialog(context,
                        title: 'Item Successfully added to cart',
                        content: null,
                        defaultActionText: 'OK'),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
