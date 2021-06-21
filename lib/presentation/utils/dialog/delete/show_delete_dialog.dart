import 'package:flutter/material.dart';

import '../../../dialogs/delete/custom_delete_dialog.dart';
import '../dialog_utils.dart';

class ShowDeleteDialog {
  ShowDeleteDialog(this.context);
  late BuildContext context;

  void show() => DialogUtils.show(context, customDeleteAlertDialog(context));
}
