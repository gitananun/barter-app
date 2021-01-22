import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';
import 'package:barter/ui/shared_widgets/indicators.dart';
import 'package:flutter/material.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingLayout([
      Text('navigation'),
      FlutterLogo(),
      Text('indicators'),
      CustomIndicators(1),
      Text('What you have?'),
      Text('description'),
      FlatButton(
        onPressed: () {},
        color: Colors.red,
        child: Text('>'),
      )
    ]);
  }
}
