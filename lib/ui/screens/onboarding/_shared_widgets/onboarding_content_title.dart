import 'package:flutter/material.dart';

class OnBoardingContentTitle extends StatelessWidget {
  const OnBoardingContentTitle(this.title, {Key key, this.textStyle}) : super(key: key);
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Text(
      title,
      style: textStyle ?? _themeData.textTheme.headline5.apply(color: _themeData.disabledColor),
    );
  }
}
