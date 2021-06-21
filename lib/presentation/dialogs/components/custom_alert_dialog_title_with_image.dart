import 'package:flutter/material.dart';

import '../../../paths.dart';
import '../../styles/types/double/double_style.dart';

Widget customAlertDialogTitleWithImage(
  BuildContext context, {
  required String title,
  required String imageTitle,
  String assetsPath = Paths.DIALOG_ASSETS,
}) {
  final ThemeData _themeData = Theme.of(context);

  return Wrap(
    runSpacing: DoubleStyle.spaceBetweenSection,
    children: [
      Align(
        child: Image.asset(
          assetsPath + imageTitle,
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
