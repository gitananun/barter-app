import 'package:barter/presentation/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/presentation/screens/auth/_shared_widgets/auth_scaffold.dart';
import 'package:barter/presentation/screens/auth/_shared_widgets/components/auth_action_suggestion_rich_text.dart';
import 'package:barter/presentation/screens/auth/_shared_widgets/components/continue_with_social_text.dart';
import 'package:barter/presentation/screens/auth/_shared_widgets/components/multiple/social_buttons.dart';
import 'package:barter/presentation/screens/auth/signup/_sections/signup_form.dart';
import 'package:barter/presentation/screens/auth/signup/layout/signup_layout.dart';
import 'package:barter/presentation/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: SignupLayout(
        children: [
          const AuthFormHeading(title: 'Welcome!', subtitle: 'Please enter your account here'),
          const SignupForm(),
          const CustomFlatButton(text: 'Sign Up', minWidth: double.infinity),
          const ContinueWithSocialText(),
          ...SocialButtonsList.getButtonsIterable(context),
          const AuthActionSuggestionRichText(
            text: 'Already have an account? ',
            actionNameText: 'Sign In',
            path: '/login',
          ),
        ],
      ),
    );
  }
}
