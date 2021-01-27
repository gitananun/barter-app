import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class OnBoardingWelcomeButton extends StatelessWidget {
  const OnBoardingWelcomeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFlatButton(
      primary: true,
      text: "Get started",
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
    );
  }
}
