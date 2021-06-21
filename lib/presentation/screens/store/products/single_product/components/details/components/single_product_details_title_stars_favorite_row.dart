import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../shared_widgets/rating_stars_row.dart';
import '../../../../../../../styles/single_product/style.dart';
import 'single_product_details_circular_icon.dart';
import 'single_product_details_title.dart';

class SingleProductDetailsTitleStarsFavoriteRow extends StatelessWidget {
  const SingleProductDetailsTitleStarsFavoriteRow({Key? key, required this.title, required this.rating})
      : super(key: key);
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
            RatingStarsRow(rating),
          ],
        ),
        const SingleProductDetailsCircularIcon(FontAwesomeIcons.solidHeart)
      ],
    );
  }
}
