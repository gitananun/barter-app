import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGrid extends StatelessWidget {
  const HomeDashboardProductsGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      physics: BouncingScrollPhysics(),
      children: List.generate(6, (index) => HomeDashboardProductsGridItem()),
    );
  }
}
