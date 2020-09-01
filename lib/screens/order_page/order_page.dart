import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/add_to_cart_button.dart';
import 'components/cup_size_container.dart';
import 'components/price_container.dart';
import 'components/product_container.dart';
import 'components/sugar_container.dart';

class OrderPage extends StatefulWidget {
  final Product product;

  const OrderPage({Key key, this.product}) : super(key: key);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ProductContainer(
              product: widget.product,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PriceContainer(
                    product: widget.product,
                  ),
                  CupSizeContainer(),
                  SugarContainer(),
                  AddToCartButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
