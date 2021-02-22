import 'package:barter/ui/dialogs/feedback/custom_feedback_dialog.dart';
import 'package:barter/ui/utils/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardFloatingActionButton extends StatelessWidget {
  const HomeDashboardFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return FloatingActionButton(
      child: FaIcon(FontAwesomeIcons.plus, color: Colors.white),
      elevation: 0,
      onPressed: () => DialogUtils.show(context, customFeedbackAlertDialog(context)),
      highlightElevation: 0,
      backgroundColor: _themeData.primaryColor,
    );
  }
}
