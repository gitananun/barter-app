import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_with_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/animations/custom_animated_switcher.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridSection extends StatelessWidget {
  const HomeDashboardProductsGridSection({Key key, @required this.controller, @required this.closeTopContainer})
      : super(key: key);
  final ScrollController controller;
  final bool closeTopContainer;

  @override
  Widget build(BuildContext context) {
    return HomeDashboardSectionTitleWithContentWrapper(
      children: [
        CustomAnimatedSwitcher(
            condition: closeTopContainer,
            child1: SizedBox(),
            child2: HomeDashboardSectionTitleRow(title: 'Best Offers', moreText: 'see more')),
        HomeDashboardProductsGrid(controller: controller),
      ],
    );
  }
}
