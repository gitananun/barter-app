import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/ui/screens/category/layout/components/category_scaffold_app_bar_title.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_fancy_floating_action_button.dart';
import 'package:flutter/material.dart';

class CategoryScaffold extends StatelessWidget {
  const CategoryScaffold({
    Key? key,
    required this.body,
    required this.category,
  }) : super(key: key);
  final Widget body;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      floatingActionButton: const CustomFancyFloatingActionButton(),
      appBar: AppBar(
        elevation: 0,
        title: CategoryScaffoldAppBarTitle(category: category),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
