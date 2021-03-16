import 'package:barter/ui/dialogs/feedback/custom_feedback_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowRateDialog {
  ShowRateDialog(this.context);
  BuildContext context;

  void show() => DialogUtils.show(context, customFeedbackAlertDialog(context));
}
