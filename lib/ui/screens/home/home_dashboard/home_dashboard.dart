import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_category_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_deals_carousel.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_search_section.dart';
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
    return HomeDashboardScaffold(
      body: HomeDashboardLayout(
        children: [
          HomeDashboardCategorySection(),
          HomeDashboardSearchSection(),
          HomeDashboardDealsCarousel(),
        ],
      ),
    );
  }
}
