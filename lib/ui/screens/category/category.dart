import 'package:barter/data/mock/products.dart';
import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/ui/screens/category/layout/category_scaffold.dart';
import 'package:barter/ui/screens/shared_widgets/products/main_products_grid.dart';
import 'package:barter/ui/shared_widgets/dividers/custom_thick_divider.dart';
import 'package:barter/ui/styles/types/widget/widget_style.dart';
import 'package:flutter/material.dart';

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
