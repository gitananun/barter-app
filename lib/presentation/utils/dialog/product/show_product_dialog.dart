import 'package:flutter/material.dart';

import '../../../../domain/models/store/product/product.dart';
import '../../../dialogs/product/custom_product_dialog.dart';
import '../dialog_utils.dart';

class ShowProductDialog {
  ShowProductDialog(this.context);
  BuildContext context;

  void show(Product product) => DialogUtils.show(
        context,
        customProductAlertDialog(context, product),
      );
}
