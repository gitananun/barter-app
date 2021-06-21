import 'package:flutter/material.dart';

import '../../styles/types/shape/shape_style.dart';
import '../components/custom_alert_dialog_title_with_image.dart';
import 'components/custom_feedback_dialog_content.dart';

Widget customFeedbackAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: ShapeStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: 'ragged_checkmark.png',
      title: "Let us know how we're doing",
    ),

    /// Content with Submit button
    content: CustomFeedbackDialogContent(context),
  );
}
