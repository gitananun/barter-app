import 'package:flutter/material.dart';

import '../../../styles/types/box_shadow/box_shadow_style.dart';
import '../../../styles/types/double/double_style.dart';
import '../../../styles/types/edge_insets/edge_insets_style.dart';
import 'custom_draggable_scrollable_sheet.dart';

class CustomDraggableScrollableSheetWithDecoratedContainer extends StatelessWidget {
  const CustomDraggableScrollableSheetWithDecoratedContainer({
    Key? key,
    required this.children,
    required this.minChildSize,
    required this.maxChildSize,
    required this.initialChildSize,
    this.runAlignment = WrapAlignment.spaceEvenly,
  }) : super(key: key);

  final double maxChildSize;
  final double minChildSize;
  final List<Widget> children;
  final double initialChildSize;
  final WrapAlignment runAlignment;

  final Radius _radius = const Radius.circular(25);

  @override
  Widget build(BuildContext context) {
    return CustomDraggableScrollableSheet(
      minChildSize: minChildSize,
      initialChildSize: initialChildSize,
      maxChildSize: maxChildSize,
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: EdgeInsetsStyle.contentPadding.copyWith(top: 5, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadowStyle.draggableBottomSheetBoxShadow],
          borderRadius: BorderRadius.only(topLeft: _radius, topRight: _radius),
        ),
        child: Column(
          children: [
            const SizedBox(width: DoubleStyle.sheetDividerWidth, child: Divider()),
            Expanded(
              child: Wrap(
                runSpacing: 10,
                runAlignment: runAlignment,
                children: children,
              ),
            )
          ],
        ),
      ),
    );
  }
}
