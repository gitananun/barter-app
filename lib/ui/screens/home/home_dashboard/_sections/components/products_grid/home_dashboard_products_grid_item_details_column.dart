import 'package:flutter/material.dart';

class HomeDashboardProductsGridItemDetailsColumn extends StatelessWidget {
  const HomeDashboardProductsGridItemDetailsColumn({Key key, this.title, this.location, this.state}) : super(key: key);
  final String title;
  final String state;
  final String location;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: _themeData.textTheme.caption.apply(fontWeightDelta: 3),
          ),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: state + ' ',
              style: _themeData.textTheme.overline.apply(fontSizeFactor: 0.8),
              children: <TextSpan>[
                TextSpan(text: 'in', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' ' + location),
              ],
            ),
          )
        ],
      ),
    );
  }
}
