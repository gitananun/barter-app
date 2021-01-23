import 'package:flutter/material.dart';

class OnBoardingContentTitle extends StatelessWidget {
  const OnBoardingContentTitle(this.title, {Key key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline5);
  }
}
