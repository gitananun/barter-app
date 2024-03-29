import 'package:flutter/material.dart';

import '../../../styles/types/double/double_style.dart';

class DashboardSectionTitleWithContentWrapper extends StatelessWidget {
  const DashboardSectionTitleWithContentWrapper({Key? key, required this.children}) : super(key: key);
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
