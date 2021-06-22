import 'package:flutter/material.dart';

import '../../../shared_widgets/custom_flat_button.dart';

class OnBoardingWelcomeButton extends StatelessWidget {
  const OnBoardingWelcomeButton(this.onPressed, {Key? key}) : super(key: key);
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomFlatButton(
      text: 'Get started',
      onPressed: onPressed,
      minWidth: MediaQuery.of(context).size.width - 80,
    );
  }
}
