import 'package:barter/ui/screens/home.dart';
import 'package:barter/ui/screens/login/login.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final dynamic _args = settings.arguments;
    switch (settings.name) {
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return null;
    }
  }
}
