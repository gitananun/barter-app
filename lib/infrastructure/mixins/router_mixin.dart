import 'package:flutter/material.dart';

mixin RouterMixin {
  Route<dynamic> onGenerateRoute(BuildContext context, RouteSettings settings);

  Route<dynamic> returnScreen(BuildContext context, Widget screen, String route) {
    return MaterialPageRoute<dynamic>(builder: (_) => screen);
  }
}
