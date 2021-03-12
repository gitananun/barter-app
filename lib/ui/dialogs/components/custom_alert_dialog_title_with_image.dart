import 'package:barter/paths.dart';
import 'package:barter/ui/styles/types/double/double_style.dart';
import 'package:flutter/material.dart';

Widget customAlertDialogTitleWithImage(
  BuildContext context, {
  required String imageTitle,
  required String title,
}) {
  final ThemeData _themeData = Theme.of(context);

  return Wrap(
    runSpacing: DoubleStyle.spaceBetweenSection,
    children: [
      Align(
        child: Image.asset(
          Paths.DIALOG_ASSETS + (imageTitle),
          width: _themeData.textTheme.headline1?.fontSize,
        ),
      ),
      Align(
        child: Text(
          title,
          style: _themeData.textTheme.caption?.apply(fontWeightDelta: 3, fontSizeDelta: 5),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
