import 'package:flutter/material.dart';

import '../../../dialogs/upload/custom_upload_success_dialog.dart';
import '../dialog_utils.dart';

class ShowUploadDialog {
  ShowUploadDialog(this.context);
  late BuildContext context;

  void show() => DialogUtils.show(context, customUploadSuccessAlertDialog(context));
}
