import 'package:flutter/material.dart';

import '../../../../../domain/models/store/product/specifications/category.dart';
import '_includes/custom_product_filters_bottom_sheet_categories_grid_item.dart';

class CustomProductFiltersBottomSheetCategoriesHorizontalList extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesHorizontalList(this.categories, {Key? key}) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < categories.length; i++)
            CustomProductFiltersBottomSheetCategoriesGridItem(
              categories[i],
              active: i == 0,
            ),
        ],
      ),
    );
  }
}
