import 'package:barter/ui/dialogs/feedback/components/custom_feedback_dialog_content.dart';
import 'package:barter/ui/dialogs/feedback/components/custom_feedback_dialog_title.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

Widget customFeedbackAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: SharedStyle.dialogShape,
    title: customFeedbackDialogTitle(context),

    /// Content with Submit button
    content: CustomFeedbackDialogContent(context),
  );
}
