import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductContainer extends StatelessWidget {
  final Product product;
  const ProductContainer({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 28), blurRadius: 80)
            ],
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            height: 160,
            width: 180,
            child: SvgPicture.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 16, horizontal: kDefaultPadding),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios)),
              Expanded(
                child: Text(
                  product.name,
                  style: kProductNameStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 50,
              )
            ],
          ),
        )
      ],
    );
  }
}
