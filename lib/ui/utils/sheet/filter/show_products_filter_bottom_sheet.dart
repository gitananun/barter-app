import 'package:barter/ui/shared_sheets/bottom/product_filters/custom_product_filters_bottom_sheet.dart';
import 'package:barter/ui/utils/sheet/sheet_utils.dart';
import 'package:flutter/material.dart';

class ProductsFilterBottomSheetUtils {
  late BuildContext context;

  ProductsFilterBottomSheetUtils(BuildContext ctx) {
    context = ctx;
  }

  void show() => SheetUtils.showBottomSheet(context, CustomProductFiltersBottomSheet());
}
