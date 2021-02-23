import 'package:barter/ui/sheets/bottom/components/custom_bottom_sheet_title_body_divider.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_categories_grid.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_main_wrapper.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_price_slider.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_section_aligned_column.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_title.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheet extends StatelessWidget {
  const CustomProductFiltersBottomSheet({Key key}) : super(key: key);

  final List<String> _categories = const ['All', 'Computer', 'Books', 'Cars'];

  @override
  Widget build(BuildContext context) {
    return CustomProductFiltersBottomSheetMainWrapper(
      children: [
        CustomProductFiltersBottomSheetTitle('Add a Filter'),
        CustomBottomSheetTitleBodyDivider(),
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Category',
          body: CustomProductFiltersBottomSheetCategoriesGrid(_categories),
        ),
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Price Estimation',
          body: CustomProductFiltersBottomSheetPriceSlider(),
        ),
      ],
    );
  }
}
