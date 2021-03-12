import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

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
