import 'dart:ui';

import 'package:flutter/material.dart';

import 'mts_theme.dart';

class LightTheme extends MTStheme {
  @override
  Color get accentColor => const Color(0xFFd0dbea);

  @override
  Color get canvasColor => Colors.white;

  @override
  Color get dividerColor => const Color(0xFFf4f5f7);

  @override
  Color get errorColor => const Color(0xFFe02a1f);

  @override
  Color get hintColor => const Color(0xFF9fa5c0);

  @override
  Color get primaryColor => const Color(0xFFFFb82e);

  @override
  Color get primaryTextColor => const Color(0xFF3e5481);

  @override
  Color get secondaryTextColor => const Color(0xFF9fa5c0);

  @override
  Color get splashColor => Colors.orange;

  @override
  Color get successColor => const Color(0xFF02C338);
}
