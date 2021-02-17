import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_details_column.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item_image_container.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGridItem extends StatelessWidget {
  const HomeDashboardProductsGridItem({
    Key key,
    this.image,
    this.title,
    this.location,
    this.state,
  }) : super(key: key);
  final String title;
  final String state;
  final String image;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [SharedStyle.mainBoxShadow],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeDashboardProductsGridItemImageContainer(image),
          SizedBox(height: 10),
          HomeDashboardProductsGridItemDetailsColumn(title: title, state: state, location: location),
        ],
      ),
    );
  }
}
