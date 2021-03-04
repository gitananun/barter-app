import 'package:barter/ui/dialogs/delete/custom_delete_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowDeleteDialog {
  BuildContext context;

  ShowDeleteDialog(BuildContext ctx) {
    context = ctx;
  }

  void show() => DialogUtils.show(context, customDeleteAlertDialog(context));
}
