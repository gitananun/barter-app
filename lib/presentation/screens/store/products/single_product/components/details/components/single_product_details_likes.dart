import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'single_product_details_circular_icon.dart';
import 'single_product_details_specific_detail_row.dart';
import 'single_product_details_specific_detail_text.dart';

class SinlgeProductDetailsLikes extends StatelessWidget {
  const SinlgeProductDetailsLikes(this.likes, {Key? key}) : super(key: key);
  final int likes;

  @override
  Widget build(BuildContext context) {
    return SingleProductDetailsSpecificDetailRow(
      icon: SingleProductDetailsCircularIcon(
        FontAwesomeIcons.solidHeart,
        padding: 5,
        iconColor: Theme.of(context).errorColor,
        background: Theme.of(context).errorColor.withOpacity(0.2),
        size: Theme.of(context).textTheme.button?.apply(fontSizeDelta: -5).fontSize,
      ),
      text: SingleProductDetailsSpecificDetailText('${likes.toString()} likes'),
    );
  }
}
