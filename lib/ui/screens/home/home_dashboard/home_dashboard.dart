import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_layout.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_scaffold.dart';
import 'package:flutter/material.dart';

class HomeDashboardScreen extends StatefulWidget {
  HomeDashboardScreen({Key key}) : super(key: key);

  @override
  _HomeDashboardScreenState createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeDashboardScaffold(body: HomeDashboardLayout());
  }
}
