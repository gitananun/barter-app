import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid.dart';
import 'package:barter/ui/screens/shared_widgets/sections/dashboard_section_title_row.dart';
import 'package:barter/ui/screens/shared_widgets/sections/dashboard_section_title_with_content_wrapper.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridSection extends StatelessWidget {
  const HomeDashboardProductsGridSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardSectionTitleWithContentWrapper(
      children: [
        const DashboardSectionTitleRow(title: 'Best Offers', moreText: 'see more'),
        HomeDashboardProductsGrid(),
      ],
    );
  }
}
