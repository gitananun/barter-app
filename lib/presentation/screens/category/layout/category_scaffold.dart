import 'package:flutter/material.dart';

import '../../../../domain/models/store/product/specifications/category.dart';
import '../../../shared_widgets/layout_components/custom_fancy_floating_action_button.dart';
import 'components/category_scaffold_app_bar_title.dart';

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
        toolbarHeight: 60,
        title: CategoryScaffoldAppBarTitle(category: category),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
