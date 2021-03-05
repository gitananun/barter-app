import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetSectionAlignedColumn extends StatelessWidget {
  const CustomProductFiltersBottomSheetSectionAlignedColumn({
    Key? key,
    this.title,
    @required this.body,
    this.spaceBetweenTitleAndBody = 15,
  }) : super(key: key);
  final Widget? body;
  final String? title;
  final double spaceBetweenTitleAndBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: SharedStyle.bottomModalSheetMarginBetweenSections,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title ?? '', style: Theme.of(context).textTheme.bodyText2?.apply(fontWeightDelta: 1)),
            SizedBox(height: spaceBetweenTitleAndBody),
            body ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
