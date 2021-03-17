import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/screens/shared_widgets/products/products_grid_single_item.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridItem extends StatelessWidget {
  const HomeDashboardProductsGridItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) => ProductsGridSingleItem(product: product);
}
