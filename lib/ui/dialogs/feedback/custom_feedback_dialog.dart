import 'package:barter/ui/dialogs/components/custom_alert_dialog_title_with_image.dart';
import 'package:barter/ui/dialogs/feedback/components/custom_feedback_dialog_content.dart';
import 'package:barter/ui/styles/types/shape/shape_style.dart';
import 'package:flutter/material.dart';

Widget customFeedbackAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: ShapeStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: 'ragged_checkmark.png',
      title: 'Let us know how we\'re doing',
    ),

    /// Content with Submit button
    content: CustomFeedbackDialogContent(context),
  );
}
