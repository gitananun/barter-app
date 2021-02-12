import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_sized_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardAppBarActions {
  BuildContext context;

  HomeDashboardAppBarActions(BuildContext ctx) {
    context = ctx;
  }

  List<Widget> getActions() {
    return [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 20),
        child: HomeDashboardSizedicon(
          FontAwesomeIcons.filter,
          color: Theme.of(context).indicatorColor,
        ),
      ),
    ];
  }
}
