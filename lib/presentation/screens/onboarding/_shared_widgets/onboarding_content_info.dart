import 'package:flutter/material.dart';

class OnBoardingContentInfo extends StatelessWidget {
  const OnBoardingContentInfo(this.info, {Key? key}) : super(key: key);
  final String? info;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Text(
      info ?? '',
      style: _themeData.textTheme.subtitle2?.apply(color: _themeData.disabledColor),
      textAlign: TextAlign.center,
      maxLines: 4,
    );
  }
}
