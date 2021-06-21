import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../presentation/screens/auth/login/login.dart';
import '../../presentation/screens/auth/password_recover/password_recover.dart';
import '../../presentation/screens/auth/password_reset/password_reset.dart';
import '../../presentation/screens/auth/signup/signup.dart';
import '../../presentation/screens/auth/verify_with_code/verify_with_code.dart';
import '../../presentation/screens/home/home_dashboard/home_dashboard.dart';
import '../../presentation/screens/onboarding/onboarding.dart';
import '../../presentation/screens/search/layout/search_scaffold.dart';
import '../../presentation/screens/system/splash.dart';

final Map<String, Widget> namedRoutes = {
  '/': const OnBoardingScreen(),
  '/onboarding': const OnBoardingScreen(),
  '/login': const LoginScreen(),
  '/signup': const SignupScreen(),
  '/auth_verify_with_code': const VerifyWithCodeScreen(),
  '/password_recover': const PasswordRecoverScreen(),
  '/password_reset': const PasswordResetScreen(),
  '/home_dashboard': const HomeDashboardScreen(),
  '/splash': const SplashScreen(),
};

const navigationScreens = <Widget>[
  HomeDashboardScreen(key: PageStorageKey('home')),
  SearchScaffold(key: PageStorageKey('search')),
];

const navigationBarItems = [
  {'icon': FontAwesomeIcons.home, 'label': 'Home'},
  {'icon': FontAwesomeIcons.boxes, 'label': 'Products'},
  {'icon': FontAwesomeIcons.solidHeart, 'label': 'Favorites'},
  {'icon': FontAwesomeIcons.comments, 'label': 'Chat'},
  {'icon': FontAwesomeIcons.solidUser, 'label': 'Profile'},
];
