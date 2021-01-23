import 'package:barter/app.dart';
import 'package:barter/env.dart';
import 'package:barter/main.dart';
import 'package:barter/ui/enums/app_mode.dart';
import 'package:flutter/material.dart';

class AppHelper {
  static getDevicePreviewStatus(AppMode appMode) => appMode == AppMode.Dev;

  static Widget get getMainAppWidget => APP_MODE == AppMode.Dev ? App() : AppOriginator();
}
