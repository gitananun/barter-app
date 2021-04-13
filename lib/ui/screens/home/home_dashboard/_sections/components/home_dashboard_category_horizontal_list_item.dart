import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:barter/ui/shared_widgets/gestures/custom_gesture_detector_with_feedback.dart';
import 'package:barter/ui/styles/types/box_shadow/box_shadow_style.dart';
import 'package:barter/ui/styles/types/edge_insets/edge_insets_style.dart';
import 'package:barter/ui/styles/types/widget/widget_style.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 8),
          margin: EdgeInsetsStyle.horizontalListItemsMargin,
          child: Column(
            children: [
              CustomCircularContainer(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                boxShadow: [BoxShadowStyle.mainBoxShadow],
                bgColor: isActive ? _themeData.primaryColor : Colors.white,
                child: FaIcon(
                  category.icon,
                  size: _themeData.textTheme.headline6?.fontSize,
                  color: isActive ? Colors.white : _themeData.accentColor,
                ),
              ),
              WidgetStyle.listItemTitleTopSpacing,
              Text(category.title, style: _themeData.textTheme.caption?.apply(fontSizeDelta: -2)),
            ],
          ),
        ),
      ),
    );
  }
}
