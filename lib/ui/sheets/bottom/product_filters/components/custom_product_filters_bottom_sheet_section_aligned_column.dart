import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetSectionAlignedColumn extends StatelessWidget {
  const CustomProductFiltersBottomSheetSectionAlignedColumn({
    Key key,
    @required this.body,
    @required this.title,
  }) : super(key: key);
  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.caption.apply(fontWeightDelta: 1)),
          SizedBox(height: 15),
          body,
        ],
      ),
    );
  }
}
