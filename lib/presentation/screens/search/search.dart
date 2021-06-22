import 'package:barter/presentation/shared_widgets/layout_components/custom_main_layout_padding.dart';
import 'package:flutter/material.dart';

import '../../shared_widgets/dividers/custom_thick_divider.dart';
import '../shared_widgets/sections/dashboard_section_title_row.dart';
import '../shared_widgets/sections/dashboard_section_title_with_content_wrapper.dart';
import 'components/search_suggestions_gridview.dart';
import 'components/search_text_results_list_view.dart';
import 'layout/search_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SearchLayout(
        children: [
          CustomThickDivider(),
          CustomMainLayoutPadding(child: SearchTextResultsListView()),
          CustomThickDivider(),
          CustomMainLayoutPadding(
            child: DashboardSectionTitleWithContentWrapper(
              children: [
                DashboardSectionTitleRow(title: 'Search Suggestions'),
                SearchSuggestionsGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
