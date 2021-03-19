import 'package:barter/ui/enums/device_screen_size.dart';
import 'package:flutter/material.dart';

class MTStheme {
  static const double _height = 1.6;

  static const Color canvasColor = Colors.white;
  static const Color hintColor = secondaryTextColor;
  static const Color errorColor = Color(0xFFe02a1f);
  static const Color accentColor = Color(0xFFd0dbea);
  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color dividerColor = Color(0xFFd0dbea);
  static const Color splashColor = Colors.transparent;
  static const Color cardBgDarkColor = Color(0xFF101010);
  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);

  static const TextTheme customSmallTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 96),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 60),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 48),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 24),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 20),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 16),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
    caption: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 12),
    overline: TextStyle(
      color: secondaryTextColor,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontSize: 12,
      height: _height,
    ),
  );

  static const TextTheme customMediumTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 104),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 68),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 56),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 42),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 32),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 28),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 24),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 22),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 24),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 22),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
    caption: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 18),
    overline: TextStyle(
      color: secondaryTextColor,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontSize: 18,
      height: _height,
    ),
  );

  static const TextTheme customLargeTextTheme = TextTheme(
    headline1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 116),
    headline2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 80),
    headline3: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 68),
    headline4: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 54),
    headline5: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 44),
    headline6: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 40),
    subtitle1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 36),
    subtitle2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    bodyText1: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 36),
    bodyText2: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 34),
    button: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 34),
    caption: TextStyle(color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 32),
    overline: TextStyle(
      color: secondaryTextColor,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontSize: 32,
      height: _height,
    ),
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
      hintColor: hintColor,
      textTheme: _textTheme,
      errorColor: errorColor,
      canvasColor: canvasColor,
      accentColor: accentColor,
      splashColor: splashColor,
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      dividerColor: dividerColor,
      cardColor: cardBgDarkColor,
      fontFamily: 'AvenirNextRounded',
      indicatorColor: primaryTextColor,
      disabledColor: secondaryTextColor,
      scaffoldBackgroundColor: canvasColor,
      buttonTheme: const ButtonThemeData(buttonColor: primaryColor),
      sliderTheme: SliderThemeData(
        trackHeight: 8,
        valueIndicatorColor: primaryColor,
        tickMarkShape: SliderTickMarkShape.noTickMark,
        valueIndicatorTextStyle: _textTheme.overline?.apply(color: Colors.white),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      }),
    );
  }
}
