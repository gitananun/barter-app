import 'package:flutter/material.dart';

class HomeDashboardProductsGridItemDetailsColumn extends StatelessWidget {
  const HomeDashboardProductsGridItemDetailsColumn({
    Key? key,
    required this.title,
    required this.state,
    required this.country,
  }) : super(key: key);
  final String title;
  final String state;
  final String country;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: _themeData.textTheme.caption?.apply(fontWeightDelta: 3),
          ),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: '$state ',
              style: _themeData.textTheme.overline?.apply(fontSizeFactor: 0.8),
              children: <TextSpan>[
                const TextSpan(text: 'in', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' $country'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
