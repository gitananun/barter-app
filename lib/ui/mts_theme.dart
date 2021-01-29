import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

class MTStheme {
  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color accentColor = Color(0xFFd0dbea);
  static const Color canvasColor = Color(0xFFfcfcfc);
  static const Color dividerColor = Color(0xFFf4f5f7);
  static const Color errorColor = Color(0xFFe02a1f);
  static const Color indicatorColor = Color(0xFF3e5481);
  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);
  static const Color hintColor = secondaryTextColor;

  static const TextTheme customSmallTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 30),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 28),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 26),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 24),
    headline5: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w500, fontSize: 22),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 14),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    bodyText2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 12),
    subtitle2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 10),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12),
  );

  static const TextTheme customMediumTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 40),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 38),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 36),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 34),
    headline5: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w500, fontSize: 32),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 30),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
    bodyText2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 16),
    subtitle2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
  );

  static const TextTheme customLargeTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 70),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 68),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 65),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 60),
    headline5: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w500, fontSize: 60),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 50),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 30),
    bodyText2: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 25),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 20),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 15),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
  );

  static ThemeData customThemeData(DeviceScreenSize screenSize) {
    TextTheme _textTheme = customSmallTextTheme;

    switch (screenSize) {
      case DeviceScreenSize.Small:
        _textTheme = customSmallTextTheme;
        break;
      case DeviceScreenSize.Medium:
        _textTheme = customMediumTextTheme;
        break;
      case DeviceScreenSize.Large:
        _textTheme = customLargeTextTheme;
        break;
    }

    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      disabledColor: secondaryTextColor,
      canvasColor: canvasColor,
      dividerColor: dividerColor,
      errorColor: errorColor,
      hintColor: hintColor,
      textTheme: _textTheme,
      buttonColor: primaryColor,
      indicatorColor: indicatorColor,
      scaffoldBackgroundColor: Colors.white,
      cursorColor: primaryColor,
      buttonTheme: ButtonThemeData(buttonColor: primaryColor),
      fontFamily: 'AvenirNextRounded',
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}
