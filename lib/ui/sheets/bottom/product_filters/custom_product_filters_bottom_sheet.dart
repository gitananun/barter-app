import 'package:barter/data/mock/categories.dart';
import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_widgets/buttons_groups/custom_cancel_apply_buttons_row.dart';
import 'package:barter/ui/sheets/bottom/components/custom_bottom_sheet_title_body_divider.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_categories_grid.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_main_wrapper.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_price_range_slider.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_section_aligned_column.dart';
import 'package:barter/ui/sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_title.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheet extends StatelessWidget {
  CustomProductFiltersBottomSheet({Key? key}) : super(key: key);
  final Widget _space = SizedBox(height: 20);
  final List<Category> _categories = categories;

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
        _space,
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Price Estimation',
          body: CustomProductFiltersBottomSheetPriceRangeSlider(),
        ),
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          body: CustomCancelApplyButtonsRow(applyText: 'Filter'),
        ),
      ],
    );
  }
}
