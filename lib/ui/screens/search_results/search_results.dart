import 'package:barter/data/mock/products.dart';
import 'package:barter/ui/screens/search/layout/search_layout.dart';
import 'package:barter/ui/screens/shared_widgets/products/main_products_grid.dart';
import 'package:barter/ui/shared_widgets/dividers/custom_thick_divider.dart';
import 'package:flutter/material.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({Key? key}) : super(key: key);

  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return SearchLayout(
      children: [
        const CustomThickDivider(),
        MainProductsGrid(
          padding: const EdgeInsets.all(15),
          products: MockProducts,
        ),
      ],
    );
  }
}
