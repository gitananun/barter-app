import 'package:barter/models/store/product/product.dart';
import 'package:barter/paths.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_title_with_image.dart';
import 'package:barter/ui/dialogs/product/components/custom_product_dialog_content.dart';
import 'package:barter/ui/styles/types/shape/shape_style.dart';
import 'package:flutter/material.dart';

Widget customProductAlertDialog(BuildContext context, Product product) {
  return AlertDialog(
    shape: ShapeStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: product.images?.first ?? '',
      assetsPath: Paths.PRODUCTS_ASSETS,
      title: product.title,
    ),

    /// Content with Submit button
    content: CustomProductDialogContent(
      context,
      id: product.id,
      rating: product.rating,
      body: product.description,
    ),
  );
}
