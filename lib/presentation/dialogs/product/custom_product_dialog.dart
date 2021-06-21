import 'package:flutter/material.dart';

import '../../../domain/models/store/product/product.dart';
import '../../../paths.dart';
import '../../styles/types/shape/shape_style.dart';
import '../components/custom_alert_dialog_title_with_image.dart';
import 'components/custom_product_dialog_content.dart';

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
