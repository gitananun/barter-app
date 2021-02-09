import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/auth_scaffold.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/back_to_login_button.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/continue_with_social_text.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/multiple/social_buttons.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/password_validation_column.dart';
import 'package:barter/ui/screens/auth/signup/_sections/signup_form.dart';
import 'package:barter/ui/screens/auth/signup/layout/signup_layout.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: SignupLayout(
        children: [
          AuthFormHeading(title: 'Welcome!', subtitle: 'Please enter your account here'),
          SignupForm(),
          PasswordValidationColumn(),
          CustomFlatButton(text: 'Sign Up', minWidth: double.infinity),
          ContinueWithSocialText(),
          ...SocialButtonsList.getButtonsIterable(context),
          BackToLoginButton(),
        ],
      ),
    );
  }
}
