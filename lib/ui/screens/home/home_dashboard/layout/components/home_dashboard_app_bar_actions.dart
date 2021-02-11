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
      Align(child: HomeDashboardSizedicon(FontAwesomeIcons.filter, color: Theme.of(context).indicatorColor)),
    ];
  }
}
