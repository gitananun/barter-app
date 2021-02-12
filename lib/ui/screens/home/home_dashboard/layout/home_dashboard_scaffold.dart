import 'package:barter/ui/screens/home/home_dashboard/layout/components/home_dashboard_app_bar_actions.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/components/home_dashboard_app_bar_title.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeDashboardScaffold extends StatelessWidget {
  const HomeDashboardScaffold({Key key, @required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: AppBar(
        elevation: 0,
        primary: true,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: HomeDashboardAppBarTitle(),
        actions: HomeDashboardAppBarActions(context).getActions(),
      ),
    );
  }
}
