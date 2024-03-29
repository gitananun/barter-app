import 'package:barter/presentation/screens/auth/password_reset/sections/password_reset_buttons.dart';
import 'package:barter/presentation/screens/auth/password_reset/sections/password_reset_form.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/auth_form_heading.dart';
import '../shared_widgets/auth_scaffold.dart';
import '../shared_widgets/password_validation_column.dart';

import 'layout/password_reset_layout.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      body: PasswordResetLayout(
        children: [
          AuthFormHeading(title: 'Reset your password', subtitle: 'Please enter your new password'),
          PasswordResetForm(),
          PasswordValidationColumn(),
          PasswordResetButtons(),
        ],
      ),
    );
  }
}
