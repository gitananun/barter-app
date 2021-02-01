import 'package:barter/ui/screens/auth/login/_sections/login_buttons_list.dart';
import 'package:barter/ui/screens/auth/login/_sections/login_form_with_heading.dart';
import 'package:barter/ui/screens/auth/login/layout/login_layout.dart';
import 'package:barter/ui/shared_widgets/barter_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: LoginLayout(
        section1: BarterLogo(),
        section2: LoginFormWithHeading(),
        section3: LoginButtonsList(),
      ),
    );
  }
}
