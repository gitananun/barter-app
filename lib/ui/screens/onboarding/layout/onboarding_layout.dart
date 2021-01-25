import 'package:barter/constants.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slider_indicators/slider_indicators.dart';

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
    return Padding(
      padding: OnBoardingStyle.contentPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: section1),
          Expanded(flex: 2, child: SliderIndicators(currentPage, OnBoardingConstants.totalPages)),
          Expanded(flex: 3, child: SingleChildScrollView(child: section2)),
        ],
      ),
    );
  }
}
