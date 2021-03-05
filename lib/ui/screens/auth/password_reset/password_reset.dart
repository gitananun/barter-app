import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/auth_scaffold.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/password_validation_column.dart';
import 'package:barter/ui/screens/auth/password_reset/_sections/password_reset_buttons.dart';
import 'package:barter/ui/screens/auth/password_reset/_sections/password_reset_form.dart';
import 'package:barter/ui/screens/auth/password_reset/layout/password_reset_layout.dart';
import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
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
