import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeDashboardSectionTitleWithContentWrapper extends StatelessWidget {
  const HomeDashboardSectionTitleWithContentWrapper({Key key, @required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      runSpacing: SharedStyle.sectionTitleContentSpacing,
      children: children,
    );
  }
}
