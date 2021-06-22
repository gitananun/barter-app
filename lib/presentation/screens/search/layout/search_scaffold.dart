import 'package:barter/presentation/shared_widgets/layout_components/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

import '../../search_results/search_results.dart';
import '../../shared_widgets/search/custom_search_input.dart';
import '../../store/products/products.dart';
import '../search.dart';
import 'components/search_scaffold_app_bar_filter_action.dart';

class SearchScaffold extends StatefulWidget {
  const SearchScaffold({Key? key}) : super(key: key);

  @override
  _SearchScaffoldState createState() => _SearchScaffoldState();
}

class _SearchScaffoldState extends State<SearchScaffold> {
  late String? _currentScreen;

  final Map<String, Widget> screens = {
    'products': const ProductsScreen(),
    'search': const SearchScreen(),
    'results': const SearchResultsScreen(),
  };

  @override
  void initState() {
    super.initState();
    _currentScreen = 'products';
  }

  void search() => setState(() => _currentScreen = 'results');
  void toSearch() => setState(() => _currentScreen = 'search');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(icon: Icons.search, onPressed: search),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: const [SearchScaffoldAppBarFilterAction()],
        title: CustomSearchInput(
          onTap: toSearch,
          onFieldSubmitted: (String? v) => search(),
        ),
      ),
      body: screens[_currentScreen],
    );
  }
}
