import 'package:barter/ui/screens/home/home_dashboard/_sections/components/products_grid/home_dashboard_products_grid_item.dart';
import 'package:flutter/material.dart';

class HomeDashboardProductsGrid extends StatelessWidget {
  const HomeDashboardProductsGrid({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> products = const [
    {'title': 'iPhone 12', 'state': 'New', 'image': 'iphone.png', 'location': 'Yerevan'},
    {'title': 'Harry Potter', 'state': 'New', 'image': 'potter.png', 'location': 'France'},
    {'title': 'Tesla', 'state': 'Used', 'image': 'tesla.png', 'location': 'USA'},
    {'title': 'Playstation 4', 'state': 'Refurbished', 'image': 'ps.png', 'location': 'Gyumri'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: BouncingScrollPhysics(),
      children: List.generate(
        products.length,
        (i) => HomeDashboardProductsGridItem(
          title: products[i]['title'],
          state: products[i]['state'],
          image: products[i]['image'],
          location: products[i]['location'],
        ),
      ),
    );
  }
}
