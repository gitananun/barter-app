import 'package:flutter/material.dart';

import '../../../styles/types/border_radius/border_radius_style.dart';
import '../../../styles/types/edge_insets/edge_insets_style.dart';

class CustomBottomSheetMainWrapper extends StatelessWidget {
  const CustomBottomSheetMainWrapper({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsStyle.bottomModalSheetPadding,
      decoration: BoxDecoration(borderRadius: BorderRadiusStyle.bottomSheetBorderRadius, color: Colors.white),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 30,
        children: children,
      ),
    );
  }
}
