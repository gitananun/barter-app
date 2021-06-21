import 'package:flutter/material.dart';

import '../../styles/types/shape/shape_style.dart';
import '../components/custom_alert_dialog_title_with_image.dart';
import 'components/custom_upload_success_dialog_content.dart';

Widget customUploadSuccessAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: ShapeStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: 'upload_success.png',
      title: 'Upload Success',
    ),

    /// Content with Submit button
    content: CustomUploadSuccessDialogContent(context),
  );
}
