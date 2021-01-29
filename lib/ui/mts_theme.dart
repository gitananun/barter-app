import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

class MTStheme {
  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color accentColor = Color(0xFFd0dbea);
  static const Color canvasColor = Color(0xFFfcfcfc);
  static const Color dividerColor = Color(0xFFf4f5f7);
  static const Color errorColor = Color(0xFFe02a1f);
  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);
  static const Color hintColor = secondaryTextColor;

  static const TextTheme customSmallTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 96),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 60),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 48),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 24),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 20),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
    caption: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 12),
    overline: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 10),
  );

  static const TextTheme customMediumTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 104),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 68),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 56),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 42),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 32),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 28),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 24),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 22),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 24),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 22),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
    caption: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 20),
    overline: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
  );

  static const TextTheme customLargeTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 116),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 80),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 68),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 54),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 44),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 40),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 36),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 36),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 34),
    caption: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 32),
    overline: TextStyle(color: secondaryTextColor, fontWeight: FontWeight.w400, fontSize: 30),
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
      scaffoldBackgroundColor: canvasColor,
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
