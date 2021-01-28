import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingLayout extends StatelessWidget {
  OnBoardingLayout({
    Key key,
    @required this.section1,
    @required this.section2,
  }) : super(key: key);

  final Widget section1;
  final Widget section2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedStyle.contentPadding,
      child: Column(
        children: [
          Expanded(flex: 5, child: section1),
          SizedBox(height: 5),
          Expanded(flex: 5, child: Center(child: SingleChildScrollView(child: section2)))
        ],
      ),
    );
  }
}
