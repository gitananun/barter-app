import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../../../shared_widgets/list_view_with_column.dart';
import '../../_shared_widgets/auth_form_heading.dart';
import 'login_form.dart';

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
            const LoginForm(),
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
