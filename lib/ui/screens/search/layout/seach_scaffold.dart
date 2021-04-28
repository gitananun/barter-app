import 'package:barter/ui/screens/search/layout/components/search_scaffold_app_bar_filter_action.dart';
import 'package:barter/ui/screens/shared_widgets/search/custom_search_input.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_bottom_navigation_bar.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class SearchScaffold extends StatelessWidget {
  const SearchScaffold({
    Key? key,
    this.controller,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);
  final Widget body;
  final Widget? floatingActionButton;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton ??
          CustomFloatingActionButton(
            icon: Icons.search,
            onPressed: () => Navigator.pushNamed(context, '/search/results'),
          ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: CustomSearchInput(controller: controller),
        actions: const [SearchScaffoldAppBarFilterAction()],
      ),
      body: body,
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 1),
    );
  }
}
