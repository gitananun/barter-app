import 'package:flutter/material.dart';

import '../../../../domain/data/mock/products.dart';
import '../../../shared_widgets/dividers/custom_thick_divider.dart';
import '../../../shared_widgets/layout_components/custom_main_layout_padding.dart';
import '../../../styles/types/widget/widget_style.dart';
import '../../shared_widgets/products/main_products_grid.dart';

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
