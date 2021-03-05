import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetTitle extends StatelessWidget {
  const CustomProductFiltersBottomSheetTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle2?.apply(
            fontWeightDelta: 2,
            fontSizeDelta: -2,
          ),
    );
  }
}
