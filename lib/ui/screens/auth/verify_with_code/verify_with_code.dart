import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/verify_with_code/_sections/code_expires_in.dart';
import 'package:barter/ui/screens/auth/verify_with_code/_sections/verify_with_code_form.dart';
import 'package:barter/ui/screens/auth/verify_with_code/layout/verify_with_code_layout.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class VerifyWithCodeScreen extends StatelessWidget {
  const VerifyWithCodeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: VerifyWithCodeLayout(
        children: [
          AuthFormHeading(
            title: 'Check your email',
            subtitle: 'We.ve sent the code to your email',
          ),
          VerifyWithCodeForm(),
          CodeExpiresIn(),
          Wrap(
            runSpacing: 15,
            children: [
              CustomFlatButton(text: 'Verify', minWidth: double.infinity),
              CustomFlatButton(
                text: 'Send again',
                primary: false,
                minWidth: double.infinity,
                onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
              )
            ],
          )
        ],
      ),
    );
  }
}
