import 'package:barter/ui/styles/home_dashboard/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardSizedicon extends StatelessWidget {
  const HomeDashboardSizedicon(this.icon, {Key key, @required this.color}) : super(key: key);

  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) => FaIcon(icon, color: color, size: HomeDashboardStyle.iconSize);
}
