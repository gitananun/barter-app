import 'package:flutter/material.dart';
import 'package:barter/ui/shared_widgets/circular_button.dart';
import 'package:barter/ui/ui_helper.dart';

class OnBoardingCustomCircularButton extends StatelessWidget {
  const OnBoardingCustomCircularButton(this.onTap, {Key key}) : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomCircularButton(
      child: Padding(
        padding: OnBoardingStyle.nextBtnIconPadding,
        child: Icon(Icons.navigate_next, size: OnBoardingStyle.nextBtnIconSize, color: Colors.white),
      ),
      color: _themeData.primaryColor,
      splashColor: _themeData.accentColor,
      onTap: onTap,
    );
  }
}
