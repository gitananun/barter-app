import 'package:flutter/material.dart';

import '../../../domain/data/mock/products.dart';
import '../../../domain/models/store/product/specifications/category.dart';
import '../../shared_widgets/dividers/custom_thick_divider.dart';
import '../../styles/types/widget/widget_style.dart';
import '../shared_widgets/products/main_products_grid.dart';
import 'layout/category_scaffold.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return CategoryScaffold(
      category: category,
      body: SingleChildScrollView(
        child: Column(
          children: [
            WidgetStyle.verticalSpace,
            const CustomThickDivider(),
            MainProductsGrid(
              padding: const EdgeInsets.all(15),
              products: MockProducts,
            ),
          ],
        ),
      ),
    );
  }
}
