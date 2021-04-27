import 'package:barter/data/mock/products.dart';
import 'package:barter/ui/screens/search/layout/seach_scaffold.dart';
import 'package:barter/ui/screens/search/layout/search_layout.dart';
import 'package:barter/ui/screens/shared_widgets/products/main_products_grid.dart';
import 'package:barter/ui/shared_widgets/dividers/custom_thick_divider.dart';
import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  SearchResultsScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController(text: 'Gadgets');

  @override
  Widget build(BuildContext context) {
    return SearchScaffold(
      floatingActionButton: const SizedBox(),
      body: SearchLayout(
        children: [
          const CustomThickDivider(),
          MainProductsGrid(
            padding: const EdgeInsets.all(15),
            products: MockProducts,
          ),
        ],
      ),
      controller: _controller,
    );
  }
}
