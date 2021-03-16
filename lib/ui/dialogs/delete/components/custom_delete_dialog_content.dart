import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_text.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/buttons_groups/custom_cancel_apply_buttons_row.dart';

import 'package:flutter/material.dart';

class CustomDeleteDialogContent extends StatelessWidget {
  const CustomDeleteDialogContent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialogContentWrapper(
      children: [
        CustomAlertDialogContentText(
          context,
          'Deleting your product is about destroying all related to it such as the chat, details and images.',
        ),
        const Divider(),
        const CustomCancelApplyButtonsRow(applyText: 'Delete')
      ],
    );
  }
}
