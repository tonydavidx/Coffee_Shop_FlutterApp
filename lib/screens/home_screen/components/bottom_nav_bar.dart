import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 1,
              child: SvgPicture.asset('assets/images/home.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/location.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/cart.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/profile.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
