import 'package:flutter/material.dart';

@immutable
class UIhelper {
  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color accentColor = Color(0xFFfcfcfc);
  static const Color canvasColor = Color(0xFFfcfcfc);
  static const Color dividerColor = Color(0xFFf4f5f7);
  static const Color errorColor = Color(0xFFe02a1f);

  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);
  static const Color hintColor = secondaryTextColor;
}

final ThemeData customThemeData = ThemeData(
  primaryColor: UIhelper.primaryColor,
  accentColor: UIhelper.accentColor,
  canvasColor: UIhelper.canvasColor,
  dividerColor: UIhelper.dividerColor,
  errorColor: UIhelper.errorColor,
  hintColor: UIhelper.hintColor,
  //
  textTheme: customTextTheme,
  fontFamily: 'AvenirNextRounded',
  //
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
);

const TextTheme customTextTheme = TextTheme(
  headline1: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w700, fontSize: 35),
  headline2: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w700, fontSize: 30),
  headline3: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w600, fontSize: 28),
  headline4: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w700, fontSize: 22),
  headline5: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w600, fontSize: 20),
  headline6: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w600, fontSize: 18),
  bodyText1: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
  bodyText2: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
  subtitle1: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
  subtitle2: TextStyle(color: UIhelper.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14),
);
