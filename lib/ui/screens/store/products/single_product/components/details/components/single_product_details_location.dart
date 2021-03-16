import 'package:barter/models/shared/location.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_specific_detail_row.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_specific_detail_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProductDetailsLocation extends StatelessWidget {
  const SingleProductDetailsLocation(this.location, {Key? key}) : super(key: key);
  final Location location;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final double? _iconSize = _themeData.textTheme.button?.fontSize;

    return Wrap(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleProductDetailsSpecificDetailRow(
              text: SingleProductDetailsSpecificDetailText(
                "${location.country}, ${location.city ?? ''} ${location.street ?? ''}",
              ),
              icon: Icon(
                FontAwesomeIcons.mapPin,
                color: _themeData.errorColor,
                size: _iconSize,
              ),
            ),
            Icon(FontAwesomeIcons.chevronRight, size: _iconSize, color: MTStheme.primaryTextColor),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
