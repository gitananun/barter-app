import 'package:barter/app/router.dart';
import 'package:barter/ui/device_screen_helper.dart';
import 'package:barter/ui/shared_widgets/layout_components/app_bottom_navigation_bar_controller.dart';
import 'package:device_preview/device_preview.dart';

import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barter',
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const AppBottomNavigationBarController(),
      onGenerateRoute: CustomRouter.generateRoutes,
      theme: MTStheme.customThemeData(DeviceScreenHelper.getDeviceScreenSize(context)),
    );
  }
}
