import 'package:flutter/material.dart';

import '../../infrastructure/exceptions/ScreenRouteNotFoundException.dart';
import '../../infrastructure/mixins/router_mixin.dart';
import 'app_routes.dart';

@immutable
class AppRouter with RouterMixin {
  @override
  Route onGenerateRoute(BuildContext context, RouteSettings settings) {
    final Map<String, Widget> routes = namedRoutes;

    if (routes.isEmpty || !routes.containsKey(settings.name)) {
      throw ScreenRouteNotFoundException(settings.name!);
    }

    return returnScreen(context, routes[settings.name]!, settings.name.toString());
  }
}
