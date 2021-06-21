import 'package:flutter/material.dart';

import '../../styles/types/shape/shape_style.dart';
import '../components/custom_alert_dialog_title_with_image.dart';
import 'components/custom_delete_dialog_content.dart';

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
