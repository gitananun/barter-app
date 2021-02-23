import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetCategoriesGridItem extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesGridItem(this.title, {Key key, this.active = false}) : super(key: key);
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: _themeData.textTheme.overline.color),
      ),
      child: Text(
        title,
        maxLines: 1,
        style: _themeData.textTheme.overline.apply(fontSizeFactor: 0.8),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
