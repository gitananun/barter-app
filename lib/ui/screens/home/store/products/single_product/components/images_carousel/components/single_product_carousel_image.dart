import 'package:barter/paths.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductCarouselImage extends StatelessWidget {
  const SingleProductCarouselImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Image.asset(Paths.PRODUCTS_ASSETS + image, fit: BoxFit.contain),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: MTStheme.errorColor),
        borderRadius: BorderRadius.circular(SingleProductStyle.commonBorderRadius),
      ),
    );
  }
}
