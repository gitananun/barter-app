import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_details_column.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_image_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_make_favorite_gesture_detector.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridItem extends StatelessWidget {
  const HomeDashboardProductsGridItem({
    Key? key,
    this.image,
    this.title,
    this.location,
    this.state,
  }) : super(key: key);
  final String? title;
  final String? state;
  final String? image;
  final String? location;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/product', arguments: {'name': 'hi there'}),
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
                Expanded(child: HomeDashboardProductsGridItemImageContainer(image ?? '')),
                HomeDashboardProductsGridItemDetailsColumn(title: title, state: state, location: location),
              ],
            ),
          ),
        ),
        HomeDashboardProductsGridItemMakeFavoriteGestureDetector(),
      ],
    );
  }
}
