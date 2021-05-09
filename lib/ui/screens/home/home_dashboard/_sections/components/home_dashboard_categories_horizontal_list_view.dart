import 'package:barter/app/router.dart';
import 'package:barter/data/mock/categories.dart';
import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/home_dashboard_category_horizontal_list_item.dart';
import 'package:flutter/material.dart';

class HomeDashboardCategoriesHorizontalListView extends StatefulWidget {
  const HomeDashboardCategoriesHorizontalListView({Key? key}) : super(key: key);
  @override
  _HomeDashboardCategoriesHorizontalListViewState createState() => _HomeDashboardCategoriesHorizontalListViewState();
}

class _HomeDashboardCategoriesHorizontalListViewState extends State<HomeDashboardCategoriesHorizontalListView> {
  int _activeCategory = 0;
  final List<Category> _categories = categories;

  void makeActive(int id) {
    setState(() => _activeCategory = id);
    CustomNavigators.category(context, _categories[id]);
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
