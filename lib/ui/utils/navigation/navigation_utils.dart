import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationUtils {
  /// Navigate to the [screen] passed as an argument.
  static void navigateToScreen(BuildContext context, Widget screen) {
    HapticFeedback.mediumImpact();
  }
}
