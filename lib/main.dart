import 'package:barter/app/router.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: UIhelper.customThemeData,
      initialRoute: '/',
      onGenerateRoute: CustomRouter.generateRoutes,
    );
  }
}
