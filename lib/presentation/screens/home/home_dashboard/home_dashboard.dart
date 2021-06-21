import 'package:flutter/material.dart';

import 'layout/home_dashboard_layout.dart';
import 'layout/home_dashboard_scaffold.dart';
import 'sections/home_dashboard_category_section.dart';
import 'sections/home_dashboard_deals_carousel_section.dart';
import 'sections/home_dashboard_products_grid_section.dart';
import 'sections/home_dashboard_search_section.dart';

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
