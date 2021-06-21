import 'package:flutter/material.dart';

import '../../../../domain/data/mock/categories.dart';
import '../../../../domain/models/store/product/specifications/category.dart';
import '../../../shared_widgets/buttons_groups/custom_cancel_apply_buttons_row.dart';
import '../../../shared_widgets/sheets/bottom/custom_bottom_sheet_main_wrapper.dart';
import '../../../shared_widgets/sheets/bottom/custom_bottom_sheet_title_with_divider.dart';
import 'components/custom_product_filters_bottom_sheet_categories_horizontal_list.dart';
import 'components/custom_product_filters_bottom_sheet_price_range_slider.dart';
import 'components/custom_product_filters_bottom_sheet_section_aligned_column.dart';

class CustomProductFiltersBottomSheet extends StatelessWidget {
  CustomProductFiltersBottomSheet({Key? key}) : super(key: key);
  final List<Category> _categories = mockCategories;

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheetMainWrapper(
      children: [
        const CustomBottomSheetTitleWithDivider(title: 'add filter'),
        CustomProductFiltersBottomSheetSectionAlignedColumn(
          title: 'Categories',
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
