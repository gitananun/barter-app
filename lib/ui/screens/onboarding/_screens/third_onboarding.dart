import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';
import 'package:flutter/material.dart';

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingLayout([
      Text('navigation'),
      FlutterLogo(),
      Text('indicators'),
      Text('What you have?'),
      Text('description'),
      FlatButton(
        onPressed: () {},
        color: Colors.red,
        child: Text('get started'),
      )
    ]);
  }
}
