import 'package:barter/paths.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductCarouselImage extends StatelessWidget {
  const SingleProductCarouselImage({
    Key? key,
    required this.image,
    required this.active,
  }) : super(key: key);
  final String image;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SingleProductStyle.imageWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SingleProductStyle.commonBorderRadius),
        border: Border.all(color: active ? MTStheme.errorColor : Theme.of(context).accentColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Image.asset(Paths.PRODUCTS_ASSETS + image, fit: BoxFit.contain),
      ),
    );
  }
}
