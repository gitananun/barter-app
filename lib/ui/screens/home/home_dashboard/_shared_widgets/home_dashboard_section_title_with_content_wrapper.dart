import 'package:barter/ui/styles/types/double/double_style.dart';
import 'package:flutter/material.dart';

class HomeDashboardSectionTitleWithContentWrapper extends StatelessWidget {
  const HomeDashboardSectionTitleWithContentWrapper({Key? key, required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      runSpacing: DoubleStyle.sectionTitleContentSpacing,
      children: children ?? [],
    );
  }
}
