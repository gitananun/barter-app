import 'package:barter/app.dart';
import 'package:barter/app/app_helper.dart';
import 'package:barter/env.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter/services.dart';

void main() => runApp(
      DevicePreview(
        enabled: AppHelper.getDevicePreviewStatus(APP_MODE),
        builder: (context) => AppHelper.getMainAppWidget,
      ),
    );

class AppOriginator extends StatefulWidget {
  const AppOriginator({Key key}) : super(key: key);
  @override
  _AppOriginatorState createState() => _AppOriginatorState();
}

class _AppOriginatorState extends State<AppOriginator> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(home: App());
  }
}
