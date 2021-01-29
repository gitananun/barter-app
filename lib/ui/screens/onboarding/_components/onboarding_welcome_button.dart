import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class OnBoardingWelcomeButton extends StatelessWidget {
  const OnBoardingWelcomeButton(this.onPressed, {Key key}) : super(key: key);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomFlatButton(
      primary: true,
      text: "Get started",
      minWidth: MediaQuery.of(context).size.width - 80,
      onPressed: onPressed,
    );
  }
}
