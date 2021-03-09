import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProductDetailsStars extends StatelessWidget {
  const SingleProductDetailsStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            FontAwesomeIcons.solidStar,
            size: Theme.of(context).textTheme.subtitle2?.fontSize,
            color: Theme.of(context).primaryColor,
          ),
      ],
    );
  }
}
