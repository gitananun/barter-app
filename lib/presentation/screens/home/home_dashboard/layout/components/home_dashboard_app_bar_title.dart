import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared_widgets/home_dashboard_sized_icon.dart';

class HomeDashboardAppBarTitle extends StatelessWidget {
  const HomeDashboardAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Wrap(
      spacing: 10,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        HomeDashboardSizedicon(FontAwesomeIcons.mapMarkerAlt, color: _themeData.primaryColor),
        Text('Armenia, Yerevan', style: Theme.of(context).textTheme.caption),
        HomeDashboardSizedicon(FontAwesomeIcons.chevronDown, color: _themeData.accentColor)
      ],
    );
  }
}
