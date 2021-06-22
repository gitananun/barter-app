import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../../domain/models/shared/location.dart';
import 'single_product_details_specific_detail_row.dart';
import 'single_product_details_specific_detail_text.dart';

class SingleProductDetailsLocation extends StatelessWidget {
  const SingleProductDetailsLocation(this.location, {Key? key}) : super(key: key);
  final Location location;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final double? _iconSize = _themeData.textTheme.button?.fontSize;

    return Wrap(
      children: [
        const Divider(thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleProductDetailsSpecificDetailRow(
              text: SingleProductDetailsSpecificDetailText(
                "${location.country}, ${location.city ?? ''} ${location.street ?? ''}",
              ),
              icon: Icon(
                FontAwesomeIcons.mapPin,
                color: _themeData.primaryColor,
                size: _iconSize,
              ),
            ),
            Icon(FontAwesomeIcons.chevronRight, size: _iconSize, color: _themeData.primaryColor),
          ],
        ),
        const Divider(thickness: 1),
      ],
    );
  }
}
