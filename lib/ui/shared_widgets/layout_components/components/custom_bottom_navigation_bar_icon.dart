import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBarIcon extends StatelessWidget {
  const CustomBottomNavigationBarIcon({Key? key, required this.icon, this.active = false}) : super(key: key);
  final IconData? icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return FaIcon(icon, color: active ? _themeData.primaryColor : _themeData.accentColor);
  }
}
