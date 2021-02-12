import 'package:flutter/material.dart';

class HomeDashboardSectionTitleRow extends StatelessWidget {
  const HomeDashboardSectionTitleRow({Key key, this.title = '', this.moreText = ''}) : super(key: key);
  final String title;
  final String moreText;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: _themeData.textTheme.subtitle1),
        Text(
          moreText,
          style: _themeData.textTheme.subtitle2.apply(color: _themeData.primaryColor),
        ),
      ],
    );
  }
}
