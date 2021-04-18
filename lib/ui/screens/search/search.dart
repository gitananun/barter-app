import 'package:barter/ui/screens/search/layout/seach_scaffold.dart';
import 'package:barter/ui/screens/search/layout/search_layout.dart';
import 'package:barter/ui/shared_widgets/dividers/custom_thick_divider.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchScaffold(
      body: SearchLayout(
        children: [
          CustomThickDivider(),
          CustomThickDivider(),
        ],
      ),
    );
  }
}
