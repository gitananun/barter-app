import 'package:barter/ui/screens/auth/login/login.dart';
import 'package:barter/ui/screens/auth/password_recover/password_recover.dart';
import 'package:barter/ui/screens/auth/password_reset/password_reset.dart';
import 'package:barter/ui/screens/auth/signup/signup.dart';
import 'package:barter/ui/screens/auth/verify_with_code/verify_with_code.dart';
import 'package:barter/ui/screens/home/home_dashboard/home_dashboard.dart';
import 'package:barter/ui/screens/home/store/products/single_product/single_product_screen.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> _returnScreen(Widget screen) => MaterialPageRoute(
        builder: (_) => screen,
      );

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final dynamic _args = settings.arguments;
    print(_args);
    switch (settings.name) {
      case '/':
        return _returnScreen(OnBoardingScreen());
      case '/login':
        return _returnScreen(LoginScreen());
      case '/signup':
        return _returnScreen(SignupScreen());
      case '/auth_verify_with_code':
        return _returnScreen(VerifyWithCodeScreen());
      case '/password_recover':
        return _returnScreen(PasswordRecoverScreen());
      case '/password_reset':
        return _returnScreen(PasswordResetScreen());
      case '/home_dashboard':
        return _returnScreen(HomeDashboardScreen());

      /// Store routes
      /// Products, Single Product
      case '/product':
        return _returnScreen(SingleProductScreen());
      default:
        return null;
    }
  }
}
