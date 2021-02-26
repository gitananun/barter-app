import 'package:barter/ui/dialogs/feedback/custom_feedback_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowRateDialog {
  BuildContext context;

  ShowRateDialog(BuildContext ctx) {
    context = ctx;
  }

  void show() => DialogUtils.show(context, customFeedbackAlertDialog(context));
}
