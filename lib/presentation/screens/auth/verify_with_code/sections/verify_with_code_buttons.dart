import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../../../shared_widgets/custom_flat_button.dart';

class VerifyWithCodeButtons extends StatelessWidget {
  const VerifyWithCodeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomWrapWithRunSpacing(
      children: [
        const CustomFlatButton(text: 'Verify', minWidth: double.infinity),
        CustomFlatButton(
          text: 'Send again',
          primary: false,
          minWidth: double.infinity,
          onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
        )
      ],
    );
  }
}
