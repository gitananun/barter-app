import 'package:flutter/material.dart';

class SearchTextResultsItemRow extends StatelessWidget {
  const SearchTextResultsItemRow({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.access_time, color: _themeData.accentColor),
            Text(text, style: _themeData.textTheme.caption?.apply(fontWeightDelta: 1)),
          ],
        ),
        IconButton(
          icon: Icon(Icons.compare_arrows, color: _themeData.accentColor, size: 35),
          highlightColor: Colors.transparent,
          onPressed: () {},
        ),
      ],
    );
  }
}
