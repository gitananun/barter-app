import 'package:barter/ui/screens/404.dart';
import 'package:barter/ui/screens/home.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    const NotFound404Screen _notFound404Screen = NotFound404Screen();
    // final dynamic _args = settings.arguments;
    switch (settings.name) {
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => _notFound404Screen);
    }
  }
}
