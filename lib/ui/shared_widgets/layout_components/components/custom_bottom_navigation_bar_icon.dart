import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBarIcon extends StatelessWidget {
  const CustomBottomNavigationBarIcon({Key key, @required this.icon}) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) => FaIcon(icon);
}
