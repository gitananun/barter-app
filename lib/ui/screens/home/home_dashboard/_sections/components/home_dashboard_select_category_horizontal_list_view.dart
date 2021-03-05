import 'package:barter/ui/screens/home/home_dashboard/_sections/components/home_dashboard_category_horizontal_list_item.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardSelectCategoryHorizontalListView extends StatefulWidget {
  const HomeDashboardSelectCategoryHorizontalListView({Key? key}) : super(key: key);
  @override
  _HomeDashboardSelectCategoryHorizontalListViewState createState() =>
      _HomeDashboardSelectCategoryHorizontalListViewState();
}

class _HomeDashboardSelectCategoryHorizontalListViewState extends State<HomeDashboardSelectCategoryHorizontalListView> {
  int _activeCategory = 0;

  final List<Map<String, dynamic>> icons = const [
    {'icon': FontAwesomeIcons.mobileAlt, 'title': 'Phones'},
    {'icon': FontAwesomeIcons.carAlt, 'title': 'Cars'},
    {'icon': FontAwesomeIcons.heartbeat, 'title': 'Medical'},
    {'icon': FontAwesomeIcons.book, 'title': 'Books'},
    {'icon': FontAwesomeIcons.handHoldingMedical, 'title': 'Care'},
    {'icon': FontAwesomeIcons.gamepad, 'title': 'Game'},
    {'icon': FontAwesomeIcons.dumbbell, 'title': 'Fitness'},
  ];

  void makeActive(int id) => setState(() => _activeCategory = id);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HorizontalCategoriesListViewHeightResponsive.getHorizontalHeight(context),
      child: ListView.builder(
        itemCount: icons.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(5),
        itemBuilder: (BuildContext context, int index) {
          return HomeDashboardCategoryHorizontalListItem(
            icon: icons[index]['icon'],
            title: icons[index]['title'],
            onTap: () => makeActive(index),
            isActive: _activeCategory == index,
          );
        },
      ),
    );
  }
}
