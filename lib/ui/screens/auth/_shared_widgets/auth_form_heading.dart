import 'package:flutter/material.dart';

@immutable
class AuthFormHeading extends StatelessWidget {
  AuthFormHeading({Key? key, @required this.title, @required this.subtitle}) : super(key: key);
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title ?? '', style: _themeData.textTheme.headline5, textAlign: TextAlign.center),
        Text(subtitle ?? '', style: _themeData.textTheme.overline, textAlign: TextAlign.center),
      ],
    );
  }
}
