import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetCategoriesGridItem extends StatelessWidget {
  const CustomProductFiltersBottomSheetCategoriesGridItem(this.title, {Key? key, this.active = false})
      : super(key: key);
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: active ? _themeData.primaryColor : _themeData.textTheme.overline?.color ?? Colors.black,
        ),
        color: active ? _themeData.primaryColor : Colors.transparent,
      ),
      child: Text(
        title,
        maxLines: 1,
        style: _themeData.textTheme.overline?.apply(fontSizeFactor: 0.8, color: active ? Colors.white : null),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
