import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class LoginLayout extends StatelessWidget {
  LoginLayout({
    Key key,
    @required this.section1,
    @required this.section2,
    @required this.section3,
  }) : super(key: key);

  final Widget section1;
  final Widget section2;
  final Widget section3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedStyle.contentPadding,
      child: Column(
        children: [
          Expanded(flex: 1, child: section1),
          Expanded(flex: 5, child: section2),
          Expanded(flex: 4, child: section3),
        ],
      ),
    );
  }
}
