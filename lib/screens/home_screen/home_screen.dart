import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/product.dart';
import 'package:coffee_shop/screens/order_page/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/bottom_nav_bar.dart';
import 'components/product_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/menu.svg'),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset('assets/images/search.svg'),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView(
          children: [
            Container(
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'sen',
                    fontSize: 36,
                  ),
                  children: [
                    TextSpan(text: 'It\'s Great'),
                    TextSpan(
                      text: ' Day for Coffee',
                      style: TextStyle(
                          fontFamily: 'sen',
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) => ProductList(
                product: products[index],
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPage(
                        product: products[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
