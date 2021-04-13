import 'package:barter/data/mock/categories.dart';
import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_widgets/buttons_groups/custom_cancel_apply_buttons_row.dart';
import 'package:barter/ui/shared_widgets/sheets/bottom/custom_bottom_sheet_main_wrapper.dart';
import 'package:barter/ui/shared_widgets/sheets/bottom/custom_bottom_sheet_title_with_divider.dart';
import 'package:barter/ui/shared_sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_categories_horizontal_list.dart';
import 'package:barter/ui/shared_sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_price_range_slider.dart';
import 'package:barter/ui/shared_sheets/bottom/product_filters/components/custom_product_filters_bottom_sheet_section_aligned_column.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheet extends StatelessWidget {
  CustomProductFiltersBottomSheet({Key? key}) : super(key: key);
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheetMainWrapper(
      children: [
        const CustomBottomSheetTitleWithDivider(title: 'add filter'),
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Category',
          body: CustomProductFiltersBottomSheetCategoriesHorizontalList(_categories),
        ),
        const CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Price Estimation',
          body: CustomProductFiltersBottomSheetPriceRangeSlider(),
        ),
        const CustomCancelApplyButtonsRow(applyText: 'Filter'),
      ],
    );
  }
}
