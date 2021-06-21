import 'package:flutter/material.dart';

import '../../../../../domain/models/store/product/product.dart';
import '../components/products_grid_item_details_column.dart';
import '../components/products_grid_item_image_container.dart';
import '../components/products_grid_item_make_favorite_gesture_detector.dart';

class ProductsGridSingleItem extends StatelessWidget {
  const ProductsGridSingleItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: () => print('go to single product'),
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Theme.of(context).accentColor.withOpacity(0.5)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: ProductsGridItemImageContainer(product.images?[0] ?? '')),
                ProductsGridItemDetailsColumn(
                  title: product.title,
                  country: product.location.country,
                  state: product.specifications.condition.condition,
                ),
              ],
            ),
          ),
        ),
        const ProductsGridItemMakeFavoriteGestureDetector(),
      ],
    );
  }
}
