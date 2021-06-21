import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../../../shared_widgets/custom_flat_button.dart';
import '../../_shared_widgets/components/back_to_login_button.dart';

class PasswordResetButtons extends StatelessWidget {
  const PasswordResetButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomWrapWithRunSpacing(
      children: [
        CustomFlatButton(text: 'Save new password', minWidth: double.infinity),
        BackToLoginButton(),
      ],
    );
  }
}
