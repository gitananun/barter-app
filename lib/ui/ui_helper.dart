import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

@immutable
class SharedStyle {
  static const EdgeInsets contentPadding = EdgeInsets.symmetric(horizontal: 25, vertical: 25);
}

@immutable
@immutable
class OnBoardingStyle {
  static const EdgeInsets nextBtnIconPadding = EdgeInsets.all(15.0);
  static const EdgeInsets nextBtnIconPaddingSmall = EdgeInsets.all(5.0);
  static const double nextBtnIconSize = 30.0;
  static const double bottomAppBarHeight = 50;
  static const double topAppBarHeight = 80;
  static const EdgeInsets topAppBarTitleTopMargin = EdgeInsets.only(top: 20);
}

@immutable
class LoginStyle {
  static const double topAppBarHeight = 80;
}

@immutable
class CustomButtonStyle {
  static flatButtonHeight(BuildContext context) {
    double height;
    switch (DeviceScreenHelper.getDeviceScreenSize(context)) {
      case DeviceScreenSize.Large:
        height = 70;
        break;
      case DeviceScreenSize.Medium:
        height = 60;
        break;
      default:
        height = 40;
        break;
    }
    return height;
  }
}

class FormStyle {
  static const EdgeInsets contentPadding = const EdgeInsets.symmetric(horizontal: 5, vertical: 20);

  static InputBorder inputBorder({double borderRadius, Color color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: color ?? Colors.black),
      );
}
