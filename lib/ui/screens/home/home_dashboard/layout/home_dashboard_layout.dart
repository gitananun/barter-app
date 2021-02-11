import 'package:barter/ui/screens/home/home_dashboard/layout/components/home_dashboard_app_bar_actions.dart';
import 'package:barter/ui/screens/home/home_dashboard/layout/components/home_dashboard_app_bar_title.dart';
import 'package:barter/ui/styles/home_dashboard/style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class HomeDashboardLayout extends StatelessWidget {
  HomeDashboardLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HomeDashboardStyle.contentPadding,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            title: HomeDashboardAppBarTitle(),
            actions: HomeDashboardAppBarActions(context).getActions(),
          ),
        ],
      ),
    );
  }
}
