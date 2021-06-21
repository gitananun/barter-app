import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../../../shared_widgets/custom_flat_button.dart';
import '../../_shared_widgets/components/back_to_login_button.dart';

class PasswordRecoverButtons extends StatelessWidget {
  const PasswordRecoverButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomWrapWithRunSpacing(
      children: [
        CustomFlatButton(
          text: 'Reset password',
          minWidth: double.infinity,
          onPressed: () => Navigator.pushReplacementNamed(context, '/password_reset'),
        ),
        const BackToLoginButton(),
      ],
    );
  }
}
