import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_flat_button.dart';
import '../../../../shared_widgets/list_view_with_column.dart';
import '../../shared_widgets/components/auth_action_suggestion_rich_text.dart';
import '../../shared_widgets/components/continue_with_social_text.dart';
import '../../shared_widgets/components/multiple/social_buttons.dart';

class LoginButtonsList extends StatelessWidget {
  const LoginButtonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollViewWithColumn(
      children: <Widget>[
        CustomFlatButton(
          text: 'Login',
          minWidth: double.infinity,
          onPressed: () => Navigator.pushReplacementNamed(context, '/home_dashboard'),
        ),
        const ContinueWithSocialText(),
        ...SocialButtonsList.getButtonsIterable(context),
        const AuthActionSuggestionRichText(
          text: "Don't have any account yet? ",
          actionNameText: 'Sign Up',
          path: '/signup',
        ),
      ],
    );
  }
}
