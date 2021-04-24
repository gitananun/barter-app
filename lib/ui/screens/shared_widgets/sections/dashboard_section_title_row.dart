import 'package:flutter/material.dart';

class DashboardSectionTitleRow extends StatelessWidget {
  const DashboardSectionTitleRow({
    Key? key,
    this.title = '',
    this.moreText = '',
    this.onMore,
  }) : super(key: key);
  final String title;
  final String moreText;
  final GestureTapCallback? onMore;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: _themeData.textTheme.subtitle2?.apply(fontWeightDelta: 2)),
        GestureDetector(
          onTap: onMore,
          child: Text(
            moreText,
            style: _themeData.textTheme.caption?.apply(color: _themeData.primaryColor),
          ),
        ),
      ],
    );
  }
}
