import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_sized_icon.dart';
import 'package:flutter/material.dart';

class HomeDashboardAppBarAction extends StatelessWidget {
  const HomeDashboardAppBarAction(this.icon, {Key key, @required this.color, @required this.onTap}) : super(key: key);
  final IconData icon;
  final Color color;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: HomeDashboardSizedicon(icon, color: color),
    );
  }
}
