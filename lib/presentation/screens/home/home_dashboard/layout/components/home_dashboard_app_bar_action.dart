import 'package:flutter/material.dart';

import '../../../../../shared_widgets/comfort/custom_large_clickable_gesture_detector.dart';
import '../../shared_widgets/home_dashboard_sized_icon.dart';

class HomeDashboardAppBarAction extends StatelessWidget {
  const HomeDashboardAppBarAction(this.icon, {Key? key, required this.color, required this.onTap}) : super(key: key);
  final Color? color;
  final IconData icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomLargeClickableGestureDetector(
      onTap: onTap ?? () {},
      child: HomeDashboardSizedicon(icon, color: color),
    );
  }
}
