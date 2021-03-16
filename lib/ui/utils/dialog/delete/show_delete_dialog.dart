import 'package:barter/ui/dialogs/delete/custom_delete_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowDeleteDialog {
  ShowDeleteDialog(this.context);
  late BuildContext context;

  void show() => DialogUtils.show(context, customDeleteAlertDialog(context));
}
