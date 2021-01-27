import 'package:flutter/material.dart';

class OnBoardingContentTitle extends StatelessWidget {
  const OnBoardingContentTitle(this.title, {Key key, this.textStyle}) : super(key: key);
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) => Text(title, style: textStyle ?? Theme.of(context).textTheme.headline5);
}
