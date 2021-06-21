import 'package:flutter/material.dart';

import '../../../../../domain/models/store/product/product.dart';
import '../../../../utils/dialog/product/show_product_dialog.dart';
import 'products_grid_single_item.dart';

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
