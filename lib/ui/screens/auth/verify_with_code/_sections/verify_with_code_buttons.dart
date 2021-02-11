import 'package:barter/ui/shared_widgets/containers/custom_wrap_with_runspacing.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class VerifyWithCodeButtons extends StatelessWidget {
  const VerifyWithCodeButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomWrapWithRunSpacing(
      children: [
        CustomFlatButton(text: 'Verify', minWidth: double.infinity),
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