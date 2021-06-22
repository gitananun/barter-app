import 'package:barter/presentation/shared_widgets/layout_components/custom_fancy_floating_action_button.dart';
import 'package:flutter/material.dart';

import 'components/home_dashboard_app_bar_actions.dart';
import 'components/home_dashboard_app_bar_title.dart';

class HomeDashboardScaffold extends StatelessWidget {
  const HomeDashboardScaffold({Key? key, required this.body}) : super(key: key);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      floatingActionButton: CustomFancyFloatingActionButton(context: context),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const HomeDashboardAppBarTitle(),
        backgroundColor: Colors.transparent,
        actions: HomeDashboardAppBarActions(context).getActions(),
      ),
    );
  }
}
