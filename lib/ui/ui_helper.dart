import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

@immutable
class SharedStyle {
  static const double spaceBetweenSection = 15;
  static const double sectionTitleContentSpacing = 20;
  static const Widget listItemTitleTopSpacing = SizedBox(height: 10);
  static const Duration animationDuration = const Duration(milliseconds: 400);
  static const EdgeInsets horizontalListItemsMargin = EdgeInsets.only(right: 20);
  static const EdgeInsets contentPadding = EdgeInsets.symmetric(horizontal: 25, vertical: 25);
  static RoundedRectangleBorder dialogShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
  static BoxShadow mainBoxShadow =
      BoxShadow(color: MTStheme.accentColor.withOpacity(0.2), spreadRadius: 4, blurRadius: 6);
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

@immutable
class HorizontalCategoriesListViewHeightResponsive {
  static getHorizontalHeight(BuildContext context) {
    double height;
    double _screenHeight = MediaQuery.of(context).size.height;

    switch (DeviceScreenHelper.getDeviceScreenSize(context)) {
      case DeviceScreenSize.Large:
        height = _screenHeight * 0.10;
        break;
      case DeviceScreenSize.Medium:
        height = _screenHeight * 0.12;
        break;
      default:
        height = _screenHeight * 0.15;
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
