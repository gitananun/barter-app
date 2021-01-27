import 'package:barter/app/router.dart';
import 'package:barter/ui/device_screen_helper.dart';
import 'package:device_preview/device_preview.dart';

import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barter',
      theme: MTStheme.customThemeData(DeviceScreenHelper.getDeviceScreenSize(context)),
      initialRoute: '/onboarding',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      onGenerateRoute: CustomRouter.generateRoutes,
    );
  }
}