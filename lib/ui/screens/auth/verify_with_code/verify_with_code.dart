import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/auth_scaffold.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/code_expires_in.dart';
import 'package:barter/ui/screens/auth/verify_with_code/_sections/verify_with_code_buttons.dart';
import 'package:barter/ui/screens/auth/verify_with_code/_sections/verify_with_code_form.dart';
import 'package:barter/ui/screens/auth/verify_with_code/layout/verify_with_code_layout.dart';
import 'package:flutter/material.dart';

class VerifyWithCodeScreen extends StatelessWidget {
  const VerifyWithCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: VerifyWithCodeLayout(
        children: [
          AuthFormHeading(
            title: 'Check your email',
            subtitle: 'We.ve sent the code to your email',
          ),
          VerifyWithCodeForm(),
          CodeExpiresIn(),
          VerifyWithCodeButtons()
        ],
      ),
    );
  }
}
