import 'package:flutter/material.dart';

import '../../../shared_widgets/custom_flat_button.dart';
import '../../components/custom_alert_dialog_content_text.dart';
import '../../components/custom_alert_dialog_content_wrapper.dart';

class CustomUploadSuccessDialogContent extends StatelessWidget {
  const CustomUploadSuccessDialogContent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomAlertDialogContentWrapper(
      children: [
        CustomAlertDialogContentText(
          context,
          'Your product has been uploaded, you can see it on your profile',
        ),
        const Divider(),
        CustomFlatButton(
          onPressed: () {},
          minWidth: double.infinity,
          color: _themeData.primaryColor,
          child: Text('Done', style: _themeData.textTheme.button),
        ),
      ],
    );
  }
}
