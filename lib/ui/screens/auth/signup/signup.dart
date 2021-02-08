import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/auth_scaffold.dart';
import 'package:barter/ui/screens/auth/signup/_sections/signup_form.dart';
import 'package:barter/ui/screens/auth/signup/_sections/signup_validation_column.dart';
import 'package:barter/ui/screens/auth/verify_with_code/layout/verify_with_code_layout.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: VerifyWithCodeLayout(
        children: [
          AuthFormHeading(title: 'Welcome!', subtitle: 'Please enter your account here'),
          SignupForm(),
          SignupValidationColumn(),
          Wrap(
            runSpacing: 15,
            children: [
              CustomFlatButton(text: 'Sign Up', minWidth: double.infinity),
              CustomFlatButton(
                text: 'Back to Login',
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
