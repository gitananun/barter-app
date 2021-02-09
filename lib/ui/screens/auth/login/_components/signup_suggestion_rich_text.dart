import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupSuggestionRichText extends StatelessWidget {
  const SignupSuggestionRichText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: 'Don\'t have account yet? ',
        style: _themeData.textTheme.caption,
        children: <TextSpan>[
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(color: _themeData.primaryColor),
            recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushReplacementNamed(context, '/signup'),
          ),
        ],
      ),
    );
  }
}
