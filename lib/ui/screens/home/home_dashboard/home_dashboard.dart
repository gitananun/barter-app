import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_category_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_deals_carousel_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_products_grid_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_search_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_layout.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_scaffold.dart';
import 'package:flutter/material.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeDashboardScaffold(
      body: HomeDashboardLayout(
        children: [
          HomeDashboardCategorySection(),
          HomeDashboardSearchSection(),
          HomeDashboardDealsCarouselSection(),
          HomeDashboardProductsGridSection(),
        ],
      ),
    );
  }
}
