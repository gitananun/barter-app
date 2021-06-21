import 'package:flutter/material.dart';

import '../../../dialogs/feedback/custom_feedback_dialog.dart';
import '../dialog_utils.dart';

class ShowRateDialog {
  ShowRateDialog(this.context);
  BuildContext context;

  void show() => DialogUtils.show(context, customFeedbackAlertDialog(context));
}
