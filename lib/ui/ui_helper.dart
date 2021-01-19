import 'package:flutter/material.dart';

@immutable
class UIhelper {
  static final ThemeData customThemeData = ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      canvasColor: canvasColor,
      dividerColor: dividerColor,
      errorColor: errorColor,
      hintColor: hintColor,
      textTheme: TextTheme().apply(
        bodyColor: primaryTextColor,
        displayColor: primaryTextColor,
      ),
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));

  static const Color primaryColor = Color(0xFFFFb82e);
  static const Color accentColor = Color(0xFFfcfcfc);
  static const Color canvasColor = Color(0xFFfcfcfc);
  static const Color dividerColor = Color(0xFFf4f5f7);
  static const Color errorColor = Color(0xFFe02a1f);
  static const Color primaryTextColor = Color(0xFF3e5481);
  static const Color secondaryTextColor = Color(0xFF9fa5c0);
  static const Color hintColor = secondaryTextColor;
}
