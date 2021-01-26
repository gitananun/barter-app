import 'package:flutter/material.dart';

@immutable
class SharedStyle {
  
}

@immutable
class OnBoardingStyle {
  static const EdgeInsets contentPadding = EdgeInsets.symmetric(horizontal: 30, vertical: 30);
  static const EdgeInsets nextBtnIconPadding = EdgeInsets.all(15.0); // btn-size
  static const EdgeInsets nextBtnIconPaddingSmall = EdgeInsets.all(5.0);
  static const double nextBtnIconSize = 30.0;
  static const double bottomAppBarHeight = 60;
  static const double topAppBarHeight = 80;
  static const EdgeInsets topAppBarTitleTopMargin = EdgeInsets.only(top: 20);
}
