import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class BoxShadowStyle {
  static BoxShadow mainBoxShadow =
      BoxShadow(color: MTStheme.accentColor.withOpacity(0.2), spreadRadius: 4, blurRadius: 6);

  static BoxShadow draggableBottomSheetBoxShadow =
      BoxShadow(color: MTStheme.accentColor.withOpacity(0.3), spreadRadius: 5, blurRadius: 10);
}
