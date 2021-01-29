import 'package:barter/ui/screens/home.dart';
import 'package:barter/ui/screens/auth/login/login.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> _returnScreen(Widget screen) => MaterialPageRoute(builder: (_) => screen);

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final dynamic _args = settings.arguments;
    switch (settings.name) {
      case '/onboarding':
        return _returnScreen(OnBoardingScreen());
      case '/login':
        return _returnScreen(LoginScreen());
      case '/':
        return _returnScreen(HomeScreen());
      default:
        return null;
    }
  }
}
