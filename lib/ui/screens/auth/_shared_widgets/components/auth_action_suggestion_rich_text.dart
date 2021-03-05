import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthActionSuggestionRichText extends StatelessWidget {
  const AuthActionSuggestionRichText({
    Key? key,
    @required this.text,
    @required this.actionNameText,
    @required this.path,
  }) : super(key: key);

  final String? text;
  final String? actionNameText;
  final String? path;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: text ?? '',
        style: _themeData.textTheme.caption,
        children: <TextSpan>[
          TextSpan(
            text: actionNameText,
            style: TextStyle(color: _themeData.primaryColor),
            recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushReplacementNamed(context, path ?? '/'),
          ),
        ],
      ),
    );
  }
}
