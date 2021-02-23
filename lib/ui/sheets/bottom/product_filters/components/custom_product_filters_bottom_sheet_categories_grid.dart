import 'package:barter/ui/sheets/bottom/product_filters/components/_includes/custom_product_filters_bottom_sheet_categories_grid_item.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetCategoriesGrid extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesGrid(this.categories, {Key key}) : super(key: key);
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 0, maxHeight: 150),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.2,
        physics: BouncingScrollPhysics(),
        children: List.generate(
          categories.length,
          (i) => CustomProductFiltersBottomSheetCategoriesGridItem(categories[i]),
        ),
      ),
    );
  }
}
