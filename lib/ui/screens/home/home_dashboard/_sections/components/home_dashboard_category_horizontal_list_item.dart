import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/ui/shared_widgets/custom_circular_container_with_icon.dart';
import 'package:barter/ui/shared_widgets/gestures/custom_gesture_detector_with_feedback.dart';
import 'package:barter/ui/styles/types/edge_insets/edge_insets_style.dart';
import 'package:barter/ui/styles/types/widget/widget_style.dart';
import 'package:flutter/material.dart';

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
              CustomCircularContainerWithIcon(icon: category.icon!, isActive: isActive),
              WidgetStyle.listItemTitleTopSpacing,
              Text(category.title, style: _themeData.textTheme.caption?.apply(fontSizeDelta: -2)),
            ],
          ),
        ),
      ),
    );
  }
}
