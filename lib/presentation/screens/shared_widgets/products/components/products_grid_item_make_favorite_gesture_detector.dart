import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared_widgets/comfort/custom_large_clickable_gesture_detector.dart';

class ProductsGridItemMakeFavoriteGestureDetector extends StatefulWidget {
  const ProductsGridItemMakeFavoriteGestureDetector({Key? key}) : super(key: key);
  @override
  _ProductsGridItemMakeFavoriteGestureDetectorState createState() =>
      _ProductsGridItemMakeFavoriteGestureDetectorState();
}

class _ProductsGridItemMakeFavoriteGestureDetectorState extends State<ProductsGridItemMakeFavoriteGestureDetector> {
  bool isFavorite = false;

  void makeFavorite() => setState(() => isFavorite = !isFavorite);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    const double _padding = 15;

    return CustomLargeClickableGestureDetector(
      onTap: makeFavorite,
      horizontal: _padding,
      vertical: _padding,
      child: FaIcon(
        isFavorite ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
        size: _themeData.textTheme.button?.fontSize,
        color: _themeData.errorColor,
      ),
    );
  }
}
