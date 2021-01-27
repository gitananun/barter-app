import 'package:barter/ui/enums/device_screen_type.dart';
import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

@immutable
class DeviceScreenHelper {
  static DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    Orientation orientation = mediaQuery.orientation;
    double deviceWidth = 0;

    if (orientation == Orientation.landscape)
      deviceWidth = mediaQuery.size.height;
    else
      deviceWidth = mediaQuery.size.width;

    if (deviceWidth > 950) return DeviceScreenType.Desktop;

    if (deviceWidth > 600) return DeviceScreenType.Tablet;

    return DeviceScreenType.Mobile;
  }

  static DeviceScreenSize getDeviceScreenSize(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Orientation orientation = mediaQuery.orientation;
    double deviceWidth = 0;

    if (orientation == Orientation.landscape)
      deviceWidth = mediaQuery.size.height;
    else
      deviceWidth = mediaQuery.size.width;

    if (deviceWidth > 500) return DeviceScreenSize.Large;
    if (deviceWidth > 320) return DeviceScreenSize.Medium;

    return DeviceScreenSize.Small;
  }
}
