import 'package:barter/ui/shared_widgets/indicators.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({
    Key key,
    @required this.currentPage,
    @required this.section1,
    @required this.section2,
  }) : super(key: key);
  final int currentPage;
  final Widget section1;
  final Widget section2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: OnBoardingStyle.contentPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: section1),
          Expanded(flex: 2, child: CustomIndicators(currentPage)),
          Expanded(flex: 3, child: section2),
        ],
      ),
    );
  }
}
