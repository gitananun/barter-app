import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/dialogs/product/custom_product_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

class ShowProductDialog {
  ShowProductDialog(this.context);
  BuildContext context;

  void show(Product product) => DialogUtils.show(
        context,
        customProductAlertDialog(context, product),
      );
}
