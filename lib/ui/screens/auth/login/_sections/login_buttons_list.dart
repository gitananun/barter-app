import 'package:barter/ui/screens/auth/_shared_widgets/components/auth_action_suggestion_rich_text.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/continue_with_social_text.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/components/multiple/social_buttons.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/shared_widgets/list_view_with_column.dart';
import 'package:flutter/material.dart';

class LoginButtonsList extends StatelessWidget {
  const LoginButtonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollViewWithColumn(
      children: <Widget>[
        CustomFlatButton(
          primary: true,
          text: 'Login',
          minWidth: double.infinity,
          onPressed: () => Navigator.pushNamed(context, '/home_dashboard'),
        ),
        ContinueWithSocialText(),
        ...SocialButtonsList.getButtonsIterable(context),
        AuthActionSuggestionRichText(
          text: 'Don\'t have any account yet? ',
          actionNameText: 'Sign Up',
          path: '/signup',
        ),
      ],
    );
  }
}
