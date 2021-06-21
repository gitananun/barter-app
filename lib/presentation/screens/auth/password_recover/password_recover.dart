import 'package:barter/presentation/screens/auth/password_recover/_sections/password_recover_buttons.dart';
import 'package:barter/presentation/screens/auth/password_recover/_sections/password_recover_form.dart';
import 'package:barter/presentation/screens/auth/password_recover/layout/password_recover_layout.dart';
import 'package:flutter/material.dart';

import '../_shared_widgets/auth_form_heading.dart';
import '../_shared_widgets/auth_scaffold.dart';

class PasswordRecoverScreen extends StatelessWidget {
  const PasswordRecoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      body: PasswordRecoverLayout(
        children: [
          AuthFormHeading(title: 'Password recovery', subtitle: 'Enter your email to recover your password'),
          PasswordRecoverForm(),
          PasswordRecoverButtons(),
        ],
      ),
    );
  }
}
