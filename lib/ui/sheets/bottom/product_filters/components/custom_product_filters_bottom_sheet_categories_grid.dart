import 'package:barter/ui/sheets/bottom/product_filters/components/_includes/custom_product_filters_bottom_sheet_categories_grid_item.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetCategoriesGrid extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesGrid(this.categories, {Key key}) : super(key: key);
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int i) => CustomProductFiltersBottomSheetCategoriesGridItem(
          categories[i],
          active: i == 0,
        ),
      ),
    );
  }
}
