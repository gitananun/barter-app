import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_sheets/bottom/product_filters/components/_includes/custom_product_filters_bottom_sheet_categories_grid_item.dart';
import 'package:flutter/material.dart';

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
