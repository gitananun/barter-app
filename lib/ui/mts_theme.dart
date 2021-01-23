import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

class MTStheme {
  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color accentColor = Color(0xFFfcfcfc);
  static const Color canvasColor = Color(0xFFfcfcfc);
  static const Color dividerColor = Color(0xFFf4f5f7);
  static const Color errorColor = Color(0xFFe02a1f);
  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);
  static const Color hintColor = secondaryTextColor;

  static const TextTheme _customSmallTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 30),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 28),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 26),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 24),
    headline5: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w500, fontSize: 22),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 20),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    bodyText2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
  );

  static const TextTheme _customLargeTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 40),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 38),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 36),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 34),
    headline5: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w500, fontSize: 32),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 30),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
    bodyText2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
  );

  static ThemeData customThemeData(DeviceScreenSize screenSize) => ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
        disabledColor: secondaryTextColor,
        canvasColor: canvasColor,
        dividerColor: dividerColor,
        errorColor: errorColor,
        hintColor: hintColor,
        textTheme: screenSize == DeviceScreenSize.Small ? _customSmallTextTheme : _customLargeTextTheme,
        fontFamily: 'AvenirNextRounded',
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      );
}
