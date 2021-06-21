import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../shared_sheets/bottom/product_filters/custom_product_filters_bottom_sheet.dart';
import '../../../../../utils/sheet/sheet_utils.dart';
import 'home_dashboard_app_bar_action.dart';

class HomeDashboardAppBarActions {
  HomeDashboardAppBarActions(this.context);
  late BuildContext context;

  List<Widget> getActions() {
    return [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 20),
        child: HomeDashboardAppBarAction(
          FontAwesomeIcons.filter,
          color: Theme.of(context).indicatorColor,
          onTap: () => SheetUtils.showBottomSheet(context, CustomProductFiltersBottomSheet()),
        ),
      ),
    ];
  }
}
