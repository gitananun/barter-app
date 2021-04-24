import 'package:barter/ui/screens/search/components/search_text_results_item_row.dart';
import 'package:flutter/material.dart';

class SearchTextResultsListView extends StatelessWidget {
  const SearchTextResultsListView({Key? key}) : super(key: key);

  final List<String> _searchTextResults = const ['Pancakes', 'Salad'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int i) {
        return SearchTextResultsItemRow(text: _searchTextResults[i]);
      },
    );
  }
}
