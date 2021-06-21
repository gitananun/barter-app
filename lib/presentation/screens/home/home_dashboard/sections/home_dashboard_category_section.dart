import 'package:flutter/material.dart';

import '../../../shared_widgets/sections/dashboard_section_title_row.dart';
import '../../../shared_widgets/sections/dashboard_section_title_with_content_wrapper.dart';
import 'components/home_dashboard_categories_horizontal_list_view.dart';

class HomeDashboardCategorySection extends StatelessWidget {
  const HomeDashboardCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DashboardSectionTitleWithContentWrapper(
      children: [
        DashboardSectionTitleRow(title: 'Select Category', moreText: 'view all'),
        HomeDashboardCategoriesHorizontalListView(),
      ],
    );
  }
}
