import 'package:barter/ui/shared_widgets/containers/custom_wrap_with_runspacing.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class PasswordRecoverButtons extends StatelessWidget {
  const PasswordRecoverButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomWrapWithRunSpacing(
      children: [
        CustomFlatButton(
          text: 'Reset password',
          minWidth: double.infinity,
          onPressed: () => Navigator.pushReplacementNamed(context, '/password_reset'),
        ),
        CustomFlatButton(
          text: 'Back to login',
          primary: false,
          minWidth: double.infinity,
          onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
        ),
      ],
    );
  }
}
