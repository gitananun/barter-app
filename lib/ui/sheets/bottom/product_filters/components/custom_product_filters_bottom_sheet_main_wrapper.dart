import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetMainWrapper extends StatelessWidget {
  const CustomProductFiltersBottomSheetMainWrapper({Key key, @required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SharedStyle.bottomModalSheetPadding,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Column(children: children),
        ],
      ),
    );
  }
}
