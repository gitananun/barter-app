import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_circular_icon.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_stars.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_title.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProductDetailsTitleStarsFavoriteRow extends StatelessWidget {
  SingleProductDetailsTitleStarsFavoriteRow({Key? key, required this.title, required this.rating}) : super(key: key);
  final String title;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleProductDetailsTitle(title),
            SingleProductStyle.commonVerticalSpace,
            SingleProductDetailsStars(rating),
          ],
        ),
        SingleProductDetailsCircularIcon(FontAwesomeIcons.solidHeart)
      ],
    );
  }
}
