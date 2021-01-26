import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({
    Key key,
    @required this.section1,
    @required this.section2,
  }) : super(key: key);

  final Widget section1;
  final Widget section2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: OnBoardingStyle.contentPadding,
      child: Column(
        children: [
          Expanded(flex: 4, child: section1),
          Expanded(flex: 2, child: SizedBox()),
          Expanded(flex: 4, child: SingleChildScrollView(child: section2)),
        ],
      ),
    );
  }
}
