import 'package:barter/paths.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridItem extends StatelessWidget {
  const HomeDashboardProductsGridItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Center(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Paths.DEALS_CAROUSEL_ASSETS + 'watches.png'), fit: BoxFit.contain),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product', style: _themeData.textTheme.caption.apply(fontWeightDelta: 3)),
                Text('new . yerevan', style: _themeData.textTheme.caption.apply(fontSizeFactor: 0.8)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
