import 'package:barter/data/mock/products.dart';
import 'package:barter/ui/screens/shared_widgets/products/main_products_grid.dart';
import 'package:barter/ui/shared_widgets/dividers/custom_thick_divider.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_main_layout_padding.dart';
import 'package:barter/ui/styles/types/widget/widget_style.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WidgetStyle.verticalSpace,
          const CustomThickDivider(),
          WidgetStyle.verticalSpace,
          CustomMainLayoutPadding(
            child: MainProductsGrid(
              products: MockProducts,
            ),
          ),
        ],
      ),
    );
  }
}
