import 'package:barter/ui/dialogs/upload/custom_upload_success_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowUploadDialog {
  late BuildContext context;

  ShowUploadDialog(BuildContext ctx) {
    context = ctx;
  }

  void show() => DialogUtils.show(context, customUploadSuccessAlertDialog(context));
}
