import 'package:flutter/material.dart';

class OnBoardingContentInfo extends StatelessWidget {
  const OnBoardingContentInfo(this.info, {Key key}) : super(key: key);
  final String info;

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
      maxLines: 4,
    );
  }
}
