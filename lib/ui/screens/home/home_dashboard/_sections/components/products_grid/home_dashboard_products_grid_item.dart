import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_details_column.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_image_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_make_favorite_gesture_detector.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridItem extends StatelessWidget {
  const HomeDashboardProductsGridItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/product', arguments: product),
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Theme.of(context).accentColor.withOpacity(0.5)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: HomeDashboardProductsGridItemImageContainer(product.images?[0] ?? '')),
                HomeDashboardProductsGridItemDetailsColumn(
                  title: product.title,
                  country: product.location.country,
                  state: product.specifications.condition.condition,
                ),
              ],
            ),
          ),
        ),
        const HomeDashboardProductsGridItemMakeFavoriteGestureDetector(),
      ],
    );
  }
}
