import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout(this.content, {Key key}) : super(key: key);
  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: OnBoardingStyle.contentPadding,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: content),
    );
  }
}
