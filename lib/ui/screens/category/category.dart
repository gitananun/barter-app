import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/ui/screens/category/layout/category_scaffold.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_main_layout_padding.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return CategoryScaffold(
      category: category,
      body: const CustomMainLayoutPadding(
        child: Text('123'),
      ),
    );
  }
}
