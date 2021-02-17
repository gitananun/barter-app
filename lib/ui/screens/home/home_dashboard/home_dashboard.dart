import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_category_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_deals_carousel_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_products_grid_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_search_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_layout.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_scaffold.dart';
import 'package:flutter/material.dart';

class HomeDashboardScreen extends StatefulWidget {
  HomeDashboardScreen({Key key}) : super(key: key);

  @override
  _HomeDashboardScreenState createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  /// Initialize [productsGridController]
  /// In order to [closeCarouselContainer]
  ScrollController productsGridController = ScrollController();
  bool closeCarouselContainer = false;

  @override
  void initState() {
    super.initState();

    /// Listen to grid scroll
    productsGridController.addListener(() {
      setState(() => closeCarouselContainer = productsGridController.offset > 30);
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeDashboardScaffold(
      body: HomeDashboardLayout(
        children: [
          HomeDashboardCategorySection(),
          HomeDashboardSearchSection(),
          HomeDashboardDealsCarouselSection(closeCarouselContainer: closeCarouselContainer),
          HomeDashboardProductsGridSection(controller: productsGridController),
        ],
      ),
    );
  }
}
