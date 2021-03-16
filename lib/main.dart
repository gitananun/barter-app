import 'package:barter/app.dart';
import 'package:barter/app/app_helper.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() => runApp(
      /// [DevicePreview] Package Runner
      // DevicePreview(
      //   enabled: AppHelper.getDevicePreviewStatus(APP_MODE),
      //   builder: (context) => AppHelper.getMainAppWidget,
      // ),
      AppHelper.getMainAppWidget,
    );

class AppOriginator extends StatefulWidget {
  const AppOriginator({Key? key}) : super(key: key);
  @override
  _AppOriginatorState createState() => _AppOriginatorState();
}

class _AppOriginatorState extends State<AppOriginator> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: MTStheme.primaryColor,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return const MaterialApp(home: App());
  }
}
