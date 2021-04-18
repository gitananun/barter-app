import 'package:barter/data/mock/products.dart';
import 'package:barter/domain/models/store/product/product.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGrid extends StatelessWidget {
  HomeDashboardProductsGrid({Key? key}) : super(key: key);

  final List<Product> _products = products;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        _products.length,
        (i) => HomeDashboardProductsGridItem(
          product: _products[i],
        ),
      ),
    );
  }
}
