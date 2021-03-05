import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/login/_sections/login_form.dart';
import 'package:barter/ui/shared_widgets/containers/custom_wrap_with_runspacing.dart';
import 'package:barter/ui/shared_widgets/list_view_with_column.dart';
import 'package:flutter/material.dart';

class LoginFormWithHeading extends StatelessWidget {
  const LoginFormWithHeading({Key? key}) : super(key: key);

  final Map<String, String> _headingInfo = const {
    'title': 'Welcome Back!',
    'subtitle': 'Enter your login credentials',
  };

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomSingleChildScrollViewWithColumn(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AuthFormHeading(title: _headingInfo['title'], subtitle: _headingInfo['subtitle']),
        CustomWrapWithRunSpacing(
          children: [
            LoginForm(),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, '/password_recover'),
                child: Text('Forgot password?', style: _themeData.textTheme.caption),
              ),
            ),
          ],
        )
      ],
    );
  }
}
