import 'package:barter/ui/dialogs/components/custom_alert_dialog_title_with_image.dart';
import 'package:barter/ui/dialogs/upload/components/custom_upload_success_dialog_content.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

Widget customUploadSuccessAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: SharedStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: 'upload_success.png',
      title: 'Upload Success',
    ),

    /// Content with Submit button
    content: CustomUploadSuccessDialogContent(context),
  );
}
