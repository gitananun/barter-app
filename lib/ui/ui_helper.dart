import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

@immutable
class SharedStyle {
  static const EdgeInsets contentPadding = EdgeInsets.symmetric(horizontal: 30, vertical: 30);
}

class FormStyle {
  static const EdgeInsets contentPadding = const EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const Widget spacingBtwInputs = const SizedBox(height: 10);
  static InputBorder inputBorder({double borderRadius = 30, Color color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: color ?? Colors.black),
      );
}

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

@immutable
class OnBoardingStyle {
  static const EdgeInsets nextBtnIconPadding = EdgeInsets.all(15.0);
  static const EdgeInsets nextBtnIconPaddingSmall = EdgeInsets.all(5.0);
  static const double nextBtnIconSize = 30.0;
  static const double bottomAppBarHeight = 50;
  static const double topAppBarHeight = 80;
  static const EdgeInsets topAppBarTitleTopMargin = EdgeInsets.only(top: 20);
}

class LoginStyle {
  static const double topAppBarHeight = 80;
}
