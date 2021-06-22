import 'package:flutter/material.dart';

import '../../../shared_widgets/circular_button_with_outside_border.dart';
import '../../../styles/onboarding/style.dart';

class OnBoardingCustomCircularButton extends StatelessWidget {
  const OnBoardingCustomCircularButton(this.onTap, {Key? key}) : super(key: key);
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    final EdgeInsets _btnPadding = OnBoardingStyle.nextBtnIconPaddingSmall;

    return CustomCircularButtonWithOutsideBorder(
      color: _themeData.primaryColor,
      onTap: onTap,
      child: Padding(
        padding: _btnPadding,
        child: const Icon(
          Icons.navigate_next,
          color: Colors.white,
          size: OnBoardingStyle.nextBtnIconSize,
        ),
      ),
    );
  }
}
