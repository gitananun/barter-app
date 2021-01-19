import 'package:barter/app/middlewares/validHomeScreenData.dart';
import 'package:barter/ui/screens/404.dart';
import 'package:barter/ui/screens/home.dart';
import 'package:flutter/material.dart';

@immutable
class CustomRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    const NotFound404Screen _notFound404Screen = NotFound404Screen();
    final dynamic _args = settings.arguments;

    switch (settings.name) {
      case '/':
        return ValidHomeScreenData().handle(_args)
            ? MaterialPageRoute(builder: (_) => HomeScreen())
            : _notFound404Screen;
      default:
        return MaterialPageRoute(builder: (_) => _notFound404Screen);
    }
  }
}
