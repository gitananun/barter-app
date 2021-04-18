import 'package:barter/domain/models/store/product/product.dart';
import 'package:barter/ui/screens/shared_widgets/products/product/products_grid_single_item.dart';
import 'package:barter/ui/utils/dialog/product/show_product_dialog.dart';
import 'package:flutter/material.dart';

class ProductsGridSingleItemWithGestureDetector extends StatelessWidget {
  const ProductsGridSingleItemWithGestureDetector({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => ShowProductDialog(context).show(product),
      child: ProductsGridSingleItem(product: product),
    );
  }
}
