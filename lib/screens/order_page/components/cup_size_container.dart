import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum sizeType { small, medium, large }
sizeType selectedSize;

class CupSizeContainer extends StatefulWidget {
  const CupSizeContainer({
    Key key,
  }) : super(key: key);

  @override
  _CupSizeContainerState createState() => _CupSizeContainerState();
}

class _CupSizeContainerState extends State<CupSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: kProductNameStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CupSize(
                  isSelected: selectedSize == sizeType.small,
                  cupImage: 'assets/images/size_small.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.small;
                    });
                  },
                ),
                CupSize(
                  isSelected: selectedSize == sizeType.medium,
                  cupImage: 'assets/images/size_medium.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.medium;
                    });
                  },
                ),
                CupSize(
                  isSelected: selectedSize == sizeType.large,
                  cupImage: 'assets/images/size_large.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.large;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CupSize extends StatelessWidget {
  final String cupImage;
  final bool isSelected;
  final Function onPress;
  const CupSize({
    Key key,
    this.cupImage,
    this.isSelected,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Opacity(
              opacity: isSelected ? 1 : 0.5,
              child: Container(
                child: SvgPicture.asset(cupImage),
              ),
            ),
            Opacity(
              opacity: isSelected ? 1 : 0,
              child: Container(
                margin: EdgeInsets.only(top: 12),
                height: 4,
                width: 20,
                color: kSecondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
