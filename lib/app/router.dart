import 'package:barter/app/assertions/routing/assertions.dart';
import 'package:barter/app/middleware/single_product_middleware.dart';
import 'package:barter/infrastructure/repositories/store/memory_product_repository.dart';
import 'package:barter/ui/screens/search/search.dart';
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
import 'package:barter/ui/screens/store/products/single_product/single_product_screen.dart';

@immutable
class CustomRouter {
  static Route<dynamic> _returnScreen(Widget screen) => MaterialPageRoute<dynamic>(builder: (_) => screen);

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final dynamic _arguments = settings.arguments;

    switch (settings.name) {
      case '/':
      case '/onboarding':
        return _returnScreen(const OnBoardingScreen());

      /// [Auth] Routes
      case '/login':
        return _returnScreen(const LoginScreen());
      case '/signup':
        return _returnScreen(const SignupScreen());
      case '/auth_verify_with_code':
        return _returnScreen(const VerifyWithCodeScreen());
      case '/password_recover':
        return _returnScreen(const PasswordRecoverScreen());
      case '/password_reset':
        return _returnScreen(const PasswordResetScreen());

      /// [Home] Routes
      case '/home_dashboard':
        return _returnScreen(const HomeDashboardScreen());

      /// [Store] Routes
      case '/product':
        RoutingAssertions.assertArguments(SingleProductMiddleware.isValid(_arguments));
        return _returnScreen(SingleProductScreen(MemoryProductRepository().findByUuid(_arguments as int)));
      case '/search':
        return _returnScreen(const SearchScreen());

      /// [System] Routes
      case '/splash':
        return _returnScreen(const SplashScreen());
      default:
        throw MissingRouteException();
    }
  }
}
