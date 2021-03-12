import 'package:barter/ui/dialogs/components/custom_alert_dialog_title_with_image.dart';
import 'package:barter/ui/dialogs/delete/components/custom_delete_dialog_content.dart';
import 'package:barter/ui/styles/types/shape/shape_style.dart';
import 'package:flutter/material.dart';

Widget customDeleteAlertDialog(BuildContext context) {
  return AlertDialog(
    shape: ShapeStyle.dialogShape,
    title: customAlertDialogTitleWithImage(
      context,
      imageTitle: 'delete_person.png',
      title: 'Are you sure?',
    ),

    /// Content with Submit button
    content: CustomDeleteDialogContent(context),
  );
}
