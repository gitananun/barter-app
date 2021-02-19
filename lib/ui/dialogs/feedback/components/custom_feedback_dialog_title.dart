import 'package:barter/paths.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customFeedbackDialogTitle(BuildContext context) {
  final ThemeData _themeData = Theme.of(context);

  return Wrap(
    runSpacing: SharedStyle.spaceBetweenSection,
    children: [
      Align(
        child: SvgPicture.asset(
          Paths.DIALOG_ASSETS + 'ragged_checkmark.svg',
          width: _themeData.textTheme.headline2.fontSize,
        ),
      ),
      Text(
        'Let us know how we\'re doing',
        style: _themeData.textTheme.caption.apply(fontWeightDelta: 3, fontSizeDelta: 5),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
