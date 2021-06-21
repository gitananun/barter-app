import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_flat_button.dart';

class BackToLoginButton extends StatelessWidget {
  const BackToLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFlatButton(
      text: 'Back to login',
      primary: false,
      minWidth: double.infinity,
      onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
    );
  }
}
