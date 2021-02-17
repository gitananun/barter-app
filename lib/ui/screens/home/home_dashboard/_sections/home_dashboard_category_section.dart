import 'package:barter/ui/screens/home/home_dashboard/_sections/components/home_dashboard_select_category_horizontal_list_view.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_with_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/animations/custom_animated_switcher.dart';
import 'package:flutter/material.dart';

class HomeDashboardCategorySection extends StatelessWidget {
  const HomeDashboardCategorySection({Key key, @required this.closeTopContainer}) : super(key: key);
  final bool closeTopContainer;

  @override
  Widget build(BuildContext context) {
    return HomeDashboardSectionTitleWithContentWrapper(
      children: [
        CustomAnimatedSwitcher(
          condition: closeTopContainer,
          child1: SizedBox(),
          child2: HomeDashboardSectionTitleRow(title: 'Select Category', moreText: 'view all'),
        ),
        HomeDashboardSelectCategoryHorizontalListView(),
      ],
    );
  }
}
