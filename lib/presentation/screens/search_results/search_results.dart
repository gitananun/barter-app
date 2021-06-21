import 'package:flutter/material.dart';

import '../../../domain/data/mock/products.dart';
import '../../shared_widgets/dividers/custom_thick_divider.dart';
import '../search/layout/search_layout.dart';
import '../shared_widgets/products/main_products_grid.dart';

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
