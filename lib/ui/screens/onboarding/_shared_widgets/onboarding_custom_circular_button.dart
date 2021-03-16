import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:barter/ui/shared_widgets/circular_button_with_outside_border.dart';
import 'package:barter/ui/styles/onboarding/style.dart';
import 'package:flutter/material.dart';

class OnBoardingCustomCircularButton extends StatelessWidget {
  const OnBoardingCustomCircularButton(this.onTap, {Key? key}) : super(key: key);
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    final EdgeInsets _btnPadding = DeviceScreenHelper.getDeviceScreenSize(context) == DeviceScreenSize.Small
        ? OnBoardingStyle.nextBtnIconPaddingSmall
        : OnBoardingStyle.nextBtnIconPadding;

    return CustomCircularButtonWithOutsideBorder(
      color: _themeData.primaryColor,
      onTap: onTap,
      child: Padding(
        padding: _btnPadding,
        child: const Icon(
          Icons.navigate_next,
          size: OnBoardingStyle.nextBtnIconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
