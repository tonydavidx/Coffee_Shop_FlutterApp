import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';

int itemCount = 1;

class PriceContainer extends StatefulWidget {
  final Product product;
  const PriceContainer({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _PriceContainerState createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: kProductNameStyle,
              ),
              Row(
                children: [
                  Text(
                    '₹',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontFamily: 'sen',
                        fontSize: 24),
                  ),
                  Text(
                    '${widget.product.price}',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontFamily: 'sen',
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (itemCount > 1) {
                    setState(() {
                      itemCount--;
                    });
                  }
                },
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                    ),
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 36,
                width: 36,
                child: Center(
                    child: Text(
                  '$itemCount',
                  style: TextStyle(
                      fontFamily: 'sen',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
              ),
              GestureDetector(
                onTap: () {
                  if (itemCount < 9) {
                    setState(() {
                      itemCount++;
                    });
                  }
                },
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
