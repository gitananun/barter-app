import 'package:flutter/material.dart';

class OnBoardingWelcomeButton extends StatelessWidget {
  const OnBoardingWelcomeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return FlatButton(
      color: _theme.primaryColor,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text('welcome', style: _theme.textTheme.button),
      onPressed: () {},
    );
  }
}
