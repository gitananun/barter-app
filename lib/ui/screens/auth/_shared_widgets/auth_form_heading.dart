import 'package:flutter/material.dart';

@immutable
class AuthFormHeading extends StatelessWidget {
  AuthFormHeading({Key key, @required this.title, @required this.subtitle}) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Column(
      children: [
        Text(title, style: _themeData.textTheme.headline4),
        Text(subtitle, style: _themeData.textTheme.subtitle2),
      ],
    );
  }
}
