import 'package:barter/domain/models/store/product/product.dart';
import 'package:barter/ui/screens/shared_widgets/products/product/products_grid_single_item_with_gesture_detector.dart';
import 'package:flutter/material.dart';

class MainProductsGrid extends StatelessWidget {
  const MainProductsGrid({Key? key, required this.products, this.padding}) : super(key: key);
  final List<Product> products;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: padding,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        products.length,
        (i) => ProductsGridSingleItemWithGestureDetector(
          product: products[i],
        ),
      ),
    );
  }
}
