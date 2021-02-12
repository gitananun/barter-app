import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardCategoryHorizontalListItem extends StatelessWidget {
  const HomeDashboardCategoryHorizontalListItem({Key key, @required this.icon, @required this.title}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return SingleChildScrollView(
      child: Container(
        margin: SharedStyle.horizontalListItemsMargin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCircularContainer(
              width: 70,
              bgColor: Colors.white,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              boxShadow: [SharedStyle.mainBoxShadow],
              child: FaIcon(icon, size: _themeData.textTheme.headline5.fontSize, color: _themeData.accentColor),
            ),
            SharedStyle.listItemTitleTopSpacing,
            Text(title, style: _themeData.textTheme.caption.apply(fontWeightDelta: 2)),
          ],
        ),
      ),
    );
  }
}
