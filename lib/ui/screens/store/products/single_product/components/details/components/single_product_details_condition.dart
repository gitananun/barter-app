import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_circular_icon.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_specific_detail_row.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_specific_detail_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProductDetailsCondition extends StatelessWidget {
  const SingleProductDetailsCondition({Key? key}) : super(key: key);

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
      text: SingleProductDetailsSpecificDetailText('refurbished'),
    );
  }
}
