import 'package:flutter/material.dart';

import '../../../shared_sheets/bottom/product_filters/custom_product_filters_bottom_sheet.dart';
import '../sheet_utils.dart';

class ProductsFilterBottomSheetUtils {
  ProductsFilterBottomSheetUtils(this.context);

  late BuildContext context;

  void show() => SheetUtils.showBottomSheet(context, CustomProductFiltersBottomSheet());
}
