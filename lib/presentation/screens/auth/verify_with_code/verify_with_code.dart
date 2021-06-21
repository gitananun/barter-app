import 'package:flutter/material.dart';

import '../_shared_widgets/auth_form_heading.dart';
import '../_shared_widgets/auth_scaffold.dart';
import '../_shared_widgets/components/code_expires_in.dart';
import '_sections/verify_with_code_buttons.dart';
import '_sections/verify_with_code_form.dart';
import 'layout/verify_with_code_layout.dart';

class VerifyWithCodeScreen extends StatelessWidget {
  const VerifyWithCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
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
