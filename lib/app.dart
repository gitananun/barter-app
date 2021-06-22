import 'package:barter/presentation/shared_widgets/layout_components/app_bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';

import 'app/routes/app_router.dart';
import 'constants/enums.dart';
import 'infrastructure/mixins/device_screen_mixin.dart';
import 'presentation/theme/light_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late DeviceScreenSize _deviceScreenSize;

  @override
  void initState() {
    super.initState();
    _deviceScreenSize = DeviceScreenSize.Medium;
  }

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barter',
      themeMode: ThemeMode.light,
      theme: LightTheme().getTheme(_deviceScreenSize),
      home: const AppBottomNavigationBarController(),
      onGenerateRoute: (settings) => _appRouter.onGenerateRoute(context, settings),
      builder: (context, widget) {
        WidgetsBinding.instance!.addPostFrameCallback(
          (_) => _deviceScreenSize = DeviceScreenMixin.getDeviceScreenSize(context),
        );

        return widget!;
      },
    );
  }
}
