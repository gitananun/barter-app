import 'package:barter/ui/screens/store/products/single_product/single_product_screen.dart';
import 'package:flutter/material.dart';

import 'package:barter/ui/screens/system/splash.dart';

import 'package:barter/exceptions/ui/routing/missing_route_exception.dart';
import 'package:barter/ui/screens/auth/login/login.dart';
import 'package:barter/ui/screens/auth/password_recover/password_recover.dart';
import 'package:barter/ui/screens/auth/password_reset/password_reset.dart';
import 'package:barter/ui/screens/auth/signup/signup.dart';
import 'package:barter/ui/screens/auth/verify_with_code/verify_with_code.dart';
import 'package:barter/ui/screens/home/home_dashboard/home_dashboard.dart';
import 'package:barter/ui/screens/onboarding/onboarding.dart';

@immutable
class CustomRouter {
  static Route<dynamic> _pageRouter(Widget screen) => MaterialPageRoute<dynamic>(builder: (_) => screen);

  static Map<String, Widget> routes = {
    '/': const OnBoardingScreen(),
    '/onboarding': const OnBoardingScreen(),
    '/login': const LoginScreen(),
    '/signup': const SignupScreen(),
    '/auth_verify_with_code': const VerifyWithCodeScreen(),
    '/password_recover': const PasswordRecoverScreen(),
    '/password_reset': const PasswordResetScreen(),
    '/home_dashboard': const HomeDashboardScreen(key: PageStorageKey('home')),
    '/splash': const SplashScreen()
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    if (!routes.containsKey(settings.name)) {
      throw MissingRouteException(settings.name ?? '');
    }

    return _pageRouter(routes[settings.name]!);
  }
}

class CustomNavigators {
  static void singleProduct(BuildContext context, int id) {
    Navigator.maybePop(context);
    Navigator.push(context, MaterialPageRoute<Widget>(builder: (BuildContext ctx) => SingleProductScreen(id)));
  }
}
