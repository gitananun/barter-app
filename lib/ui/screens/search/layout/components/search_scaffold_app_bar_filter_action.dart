import 'package:barter/ui/shared_widgets/comfort/custom_large_clickable_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScaffoldAppBarFilterAction extends StatelessWidget {
  const SearchScaffoldAppBarFilterAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomLargeClickableGestureDetector(
      vertical: 0,
      onTap: () {},
      horizontal: 20,
      child: Icon(
        FontAwesomeIcons.sortAmountDownAlt,
        color: _themeData.indicatorColor,
      ),
    );
  }
}
