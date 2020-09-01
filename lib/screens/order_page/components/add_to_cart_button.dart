import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffeedace),
                    offset: Offset(0, 20),
                    blurRadius: 30)
              ]),
          child: Center(
              child: Text(
            'add to cart',
            style:
                TextStyle(fontFamily: 'sen', fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
