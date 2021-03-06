import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:barter/ui/shared_widgets/gestures/custom_gesture_detector_with_feedback.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardCategoryHorizontalListItem extends StatelessWidget {
  const HomeDashboardCategoryHorizontalListItem({
    Key? key,
    required this.onTap,
    this.isActive = false,
    required this.category,
  }) : super(key: key);

  final bool isActive;
  final Category category;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomGestureDetectorWithFeedback(
      onTap: onTap,
      child: SingleChildScrollView(
        child: Container(
          margin: SharedStyle.horizontalListItemsMargin,
          child: Column(
            children: [
              CustomCircularContainer(
                width: 60,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                boxShadow: [SharedStyle.mainBoxShadow],
                bgColor: isActive ? _themeData.primaryColor : Colors.white,
                child: FaIcon(
                  category.icon,
                  size: _themeData.textTheme.headline6?.fontSize,
                  color: isActive ? Colors.white : _themeData.accentColor,
                ),
              ),
              SharedStyle.listItemTitleTopSpacing,
              Text(category.title, style: _themeData.textTheme.caption?.apply(fontSizeDelta: -2)),
            ],
          ),
        ),
      ),
    );
  }
}
