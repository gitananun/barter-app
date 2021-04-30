import 'package:barter/ui/screens/search/layout/components/search_scaffold_app_bar_filter_action.dart';
import 'package:barter/ui/screens/search/search.dart';
import 'package:barter/ui/screens/search_results/search_results.dart';
import 'package:barter/ui/screens/shared_widgets/search/custom_search_input.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class SearchScaffold extends StatefulWidget {
  const SearchScaffold({Key? key}) : super(key: key);

  @override
  _SearchScaffoldState createState() => _SearchScaffoldState();
}

class _SearchScaffoldState extends State<SearchScaffold> {
  final Map<String, Widget> _screens = {
    'search': const SearchScreen(),
    'results': const SearchResultsScreen(),
  };

  late String? _currentScreen;

  @override
  void initState() {
    super.initState();
    _currentScreen = 'search';
  }

  void search() => setState(() => _currentScreen = 'results');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(icon: Icons.search, onPressed: search),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: const [SearchScaffoldAppBarFilterAction()],
        title: CustomSearchInput(onFieldSubmitted: (v) => search()),
      ),
      body: _screens[_currentScreen],
    );
  }
}
