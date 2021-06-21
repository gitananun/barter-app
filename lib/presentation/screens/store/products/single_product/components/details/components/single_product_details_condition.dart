import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'single_product_details_circular_icon.dart';
import 'single_product_details_specific_detail_row.dart';
import 'single_product_details_specific_detail_text.dart';

class SingleProductDetailsCondition extends StatelessWidget {
  const SingleProductDetailsCondition(this.condition, {Key? key}) : super(key: key);
  final String condition;

  @override
  Widget build(BuildContext context) {
    return SingleProductDetailsSpecificDetailRow(
      icon: SingleProductDetailsCircularIcon(
        FontAwesomeIcons.check,
        padding: 5,
        iconColor: Theme.of(context).primaryColor,
        background: Theme.of(context).primaryColor.withOpacity(0.2),
        size: Theme.of(context).textTheme.button?.apply(fontSizeDelta: -5).fontSize,
      ),
      text: SingleProductDetailsSpecificDetailText(condition),
    );
  }
}
