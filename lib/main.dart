import 'package:barter/app/router.dart';
import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barter',
      theme: customThemeData,
      initialRoute: '/onboarding',
      onGenerateRoute: CustomRouter.generateRoutes,
    );
  }
}
