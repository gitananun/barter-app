import 'package:barter/ui/shared_widgets/sheets/custom_draggable_scrollable_sheet.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomDraggableScrollableSheetWithDecoratedContainer extends StatelessWidget {
  CustomDraggableScrollableSheetWithDecoratedContainer({
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
        margin: EdgeInsets.only(top: 5),
        padding: SharedStyle.contentPadding.copyWith(top: 5, bottom: 15),
        child: Column(
          children: [
            SizedBox(child: Divider(), width: SharedStyle.sheetDividerWidth),
            Expanded(
              child: Wrap(
                runSpacing: 20,
                children: children,
                runAlignment: runAlignment,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [SharedStyle.mainBoxShadow],
          borderRadius: BorderRadius.only(topLeft: _radius, topRight: _radius),
        ),
      ),
    );
  }
}
