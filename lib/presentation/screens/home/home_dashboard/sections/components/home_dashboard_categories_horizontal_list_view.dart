import 'package:flutter/material.dart';

import '../../../../../../domain/data/mock/categories.dart';
import '../../../../../../domain/models/store/product/specifications/category.dart';
import 'home_dashboard_category_horizontal_list_item.dart';

class HomeDashboardCategoriesHorizontalListView extends StatefulWidget {
  const HomeDashboardCategoriesHorizontalListView({Key? key}) : super(key: key);
  @override
  _HomeDashboardCategoriesHorizontalListViewState createState() => _HomeDashboardCategoriesHorizontalListViewState();
}

class _HomeDashboardCategoriesHorizontalListViewState extends State<HomeDashboardCategoriesHorizontalListView> {
  int _activeCategory = 0;
  final List<Category> _categories = mockCategories;

  void makeActive(int id) {
    setState(() => _activeCategory = id);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < _categories.length; i++)
            HomeDashboardCategoryHorizontalListItem(
              category: _categories[i],
              onTap: () => makeActive(i),
              isActive: _activeCategory == i,
            )
        ],
      ),
    );
  }
}
