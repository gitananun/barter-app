import 'package:barter/ui/screens/auth/login/login.dart';
import 'package:barter/ui/screens/auth/verify_with_code/verify_with_code.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> _returnScreen(Widget screen) => MaterialPageRoute(builder: (_) => screen);

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final dynamic _args = settings.arguments;
    switch (settings.name) {
      case '/':
        return _returnScreen(OnBoardingScreen());
      case '/login':
        return _returnScreen(LoginScreen());
      case '/auth_verify_with_code':
        return _returnScreen(VerifyWithCodeScreen());
      default:
        return null;
    }
  }
}
