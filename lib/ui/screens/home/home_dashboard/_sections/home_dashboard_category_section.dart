import 'package:barter/ui/screens/home/home_dashboard/_sections/components/home_dashboard_categories_horizontal_list_view.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_with_content_wrapper.dart';
import 'package:flutter/material.dart';

class HomeDashboardCategorySection extends StatelessWidget {
  const HomeDashboardCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeDashboardSectionTitleWithContentWrapper(
      children: [
        HomeDashboardSectionTitleRow(title: 'Select Category', moreText: 'view all'),
        HomeDashboardCategoriesHorizontalListView(),
      ],
    );
  }
}
