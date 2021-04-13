import 'package:barter/models/store/product/specifications/category.dart';
import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetCategoriesGridItem extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesGridItem(this.category, {Key? key, this.active = false})
      : super(key: key);
  final Category category;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: active ? _themeData.primaryColor : Colors.transparent,
        border: Border.all(
          color: active ? _themeData.primaryColor : _themeData.textTheme.overline?.color ?? Colors.black,
        ),
      ),
      child: Text(
        category.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: _themeData.textTheme.overline?.apply(fontSizeFactor: 0.8, color: active ? Colors.white : null),
      ),
    );
  }
}
