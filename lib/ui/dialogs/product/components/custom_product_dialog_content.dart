import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_text.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_wrapper.dart';
import 'package:flutter/material.dart';

class CustomProductDialogContent extends StatefulWidget {
  const CustomProductDialogContent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;
  @override
  _CustomProductDialogContentState createState() => _CustomProductDialogContentState();
}

class _CustomProductDialogContentState extends State<CustomProductDialogContent> {
  @override
  Widget build(_) {
    // final ThemeData _themeData = Theme.of(widget.context);

    return CustomAlertDialogContentWrapper(
      children: [
        CustomAlertDialogContentText(
          widget.context,
          'Product Dialog',
        ),
        const Divider(),
      ],
    );
  }
}
