import 'package:barter/ui/device_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:barter/app/router.dart';
import 'package:barter/ui/mts_theme.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barter',
      theme: MTStheme.customThemeData(DeviceScreenHelper.getDeviceScreenSize(MediaQuery.of(context))),
      initialRoute: '/onboarding',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      onGenerateRoute: CustomRouter.generateRoutes,
    );
  }
}
