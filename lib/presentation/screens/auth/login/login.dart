import 'package:flutter/material.dart';

import '../../../shared_widgets/barter_logo.dart';
import '../_shared_widgets/auth_scaffold.dart';
import '_sections/login_buttons_list.dart';
import '_sections/login_form_with_heading.dart';
import 'layout/login_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: LoginLayout(
        section1: Container(
          margin: const EdgeInsets.only(top: 20),
          child: const BarterLogo(),
        ),
        section2: const LoginFormWithHeading(),
        section3: const LoginButtonsList(),
      ),
    );
  }
}
