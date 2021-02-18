import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardProductsGridItemMakeFavoriteGestureDetector extends StatefulWidget {
  const HomeDashboardProductsGridItemMakeFavoriteGestureDetector({Key key}) : super(key: key);
  @override
  _HomeDashboardProductsGridItemMakeFavoriteGestureDetectorState createState() =>
      _HomeDashboardProductsGridItemMakeFavoriteGestureDetectorState();
}

class _HomeDashboardProductsGridItemMakeFavoriteGestureDetectorState
    extends State<HomeDashboardProductsGridItemMakeFavoriteGestureDetector> {
  bool isFavorite = false;

  void makeFavorite() => setState(() => isFavorite = !isFavorite);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return GestureDetector(
      onTap: makeFavorite,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: FaIcon(
          isFavorite ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
          size: _themeData.textTheme.button.fontSize,
          color: _themeData.errorColor,
        ),
      ),
    );
  }
}
