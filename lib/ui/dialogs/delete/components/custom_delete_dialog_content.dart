import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_text.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomDeleteDialogContent extends StatelessWidget {
  const CustomDeleteDialogContent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;

  @override
  Widget build(_) {
    const double _fontSizeFactor = 0.8;
    final ThemeData _themeData = Theme.of(context);

    return CustomAlertDialogContentWrapper(
      children: [
        CustomAlertDialogContentText(
          context,
          'Deleting your product is about destroying all related to it such as the chat, details and images.',
        ),
        Divider(),

        /// Buttons
        Row(
          children: [
            Expanded(
              child: CustomFlatButton(
                primary: false,
                child: Text(
                  'Let\'s keep it ',
                  style: _themeData.textTheme.button
                      ?.apply(color: _themeData.accentColor, fontSizeFactor: _fontSizeFactor),
                ),
              ),
            ),
            SharedStyle.buttonsRowMarginBetween,
            Expanded(
              child: CustomFlatButton(
                child: Text(
                  'Delete',
                  style: _themeData.textTheme.button?.apply(fontSizeFactor: _fontSizeFactor),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
