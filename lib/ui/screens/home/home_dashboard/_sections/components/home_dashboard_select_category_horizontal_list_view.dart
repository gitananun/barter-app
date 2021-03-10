import 'package:barter/data/mock/categories.dart';
import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/home_dashboard_category_horizontal_list_item.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeDashboardSelectCategoryHorizontalListView extends StatefulWidget {
  const HomeDashboardSelectCategoryHorizontalListView({Key? key}) : super(key: key);
  @override
  _HomeDashboardSelectCategoryHorizontalListViewState createState() =>
      _HomeDashboardSelectCategoryHorizontalListViewState();
}

class _HomeDashboardSelectCategoryHorizontalListViewState extends State<HomeDashboardSelectCategoryHorizontalListView> {
  int _activeCategory = 0;

  final List<Category> _categories = categories;

  void makeActive(int id) => setState(() => _activeCategory = id);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HorizontalCategoriesListViewHeightResponsive.getHorizontalHeight(context),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _categories.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(5),
        itemBuilder: (BuildContext context, int i) {
          return HomeDashboardCategoryHorizontalListItem(
            category: _categories[i],
            onTap: () => makeActive(i),
            isActive: _activeCategory == i,
          );
        },
      ),
    );
  }
}
