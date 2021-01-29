import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/login/_sections/login_form.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginFormWithHeading extends StatelessWidget {
  const LoginFormWithHeading({Key key}) : super(key: key);

  final Map<String, String> _headingInfo = const {
    'title': 'Welcome Back!',
    'subtitle': 'Enter your login credentials',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AuthFormHeading(title: _headingInfo['title'], subtitle: _headingInfo['subtitle']),
        Wrap(
          runSpacing: FormStyle.spacingBtwInputs,
          children: [
            LoginForm(),
            Align(child: Text('Forgot password?'), alignment: Alignment.centerRight),
          ],
        )
      ],
    );
  }
}
