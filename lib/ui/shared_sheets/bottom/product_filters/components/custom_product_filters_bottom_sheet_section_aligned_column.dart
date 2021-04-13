import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetSectionAlignedColumn extends StatelessWidget {
  const CustomProductFiltersBottomSheetSectionAlignedColumn({
    Key? key,
    this.title,
    required this.body,
  }) : super(key: key);
  final Widget? body;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '', style: Theme.of(context).textTheme.bodyText2?.apply(fontWeightDelta: 1)),
        const SizedBox(height: 15),
        body ?? const SizedBox(),
      ],
    );
  }
}
