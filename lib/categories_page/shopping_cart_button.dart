import 'package:flutter/material.dart';

void shoppingCart(BuildContext context)
{
  Navigator.of(context).push(  //we are using a widget which is called a navigator to perform navigation
    MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (context) => Cart(),
    ),
  );
}

class Cart extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CART'),
        leading: FlatButton(
          onPressed: () => Navigator.pop(context),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
     // body: ,
    );
  }
}
