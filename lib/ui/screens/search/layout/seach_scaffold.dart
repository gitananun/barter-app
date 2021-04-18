import 'package:barter/ui/screens/search/layout/components/search_scaffold_app_bar_filter_action.dart';
import 'package:barter/ui/screens/shared_widgets/search/custom_search_input.dart';
import 'package:flutter/material.dart';

class SearchScaffold extends StatelessWidget {
  const SearchScaffold({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const CustomSearchInput(),
        backgroundColor: Colors.transparent,
        actions: const [SearchScaffoldAppBarFilterAction()],
      ),
      body: body,
    );
  }
}
