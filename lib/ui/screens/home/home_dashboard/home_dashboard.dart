import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_category_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_deals_carousel_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_products_grid_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/home_dashboard_search_section.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_layout.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/home_dashboard_scaffold.dart';
import 'package:barter/ui/ui_helper.dart';
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
  bool closeTopContainer = false;

  /// Declare [SingleChildScrollView] controller for full screen scroll
  ScrollController screenController = ScrollController();

  @override
  void initState() {
    super.initState();

    /// Listen to grid scroll
    productsGridController.addListener(() {
      setState(() => closeTopContainer = productsGridController.offset > 10);
      if (!closeTopContainer)
        screenController.animateTo(0, duration: SharedStyle.animationDuration, curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeDashboardScaffold(
      body: HomeDashboardLayout(
        controller: screenController,
        children: [
          HomeDashboardCategorySection(closeTopContainer: closeTopContainer),
          HomeDashboardSearchSection(),
          HomeDashboardDealsCarouselSection(closeTopContainer: closeTopContainer),
          HomeDashboardProductsGridSection(controller: productsGridController, closeTopContainer: closeTopContainer),
        ],
      ),
    );
  }
}
