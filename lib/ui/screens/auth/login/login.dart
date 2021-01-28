import 'package:barter/ui/screens/auth/_shared_widgets/auth_form_heading.dart';
import 'package:barter/ui/screens/auth/login/_sections/login_form.dart';
import 'package:barter/ui/screens/auth/login/layout/login_layout.dart';
import 'package:barter/ui/shared_widgets/barter_logo.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final Map<String, String> _headingInfo = {
  'title': 'Welcome Back!',
  'subtitle': 'Enter your login credentials',
};

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: LoginLayout(
        section1: BarterLogo(),
        section2: _LoginFormWithHeading(),
        section3: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomFlatButton(primary: true, text: 'Login', minWidth: double.infinity),
            Text('Or continue with'),
            CustomFlatButton(text: 'Facebook', minWidth: double.infinity, color: Colors.blue),
            CustomFlatButton(text: 'Google', minWidth: double.infinity, color: Colors.red),
            Text('Don\'t have any account? Sign Up')
          ],
        ),
      ),
    );
  }
}

class _LoginFormWithHeading extends StatelessWidget {
  const _LoginFormWithHeading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AuthFormHeading(title: _headingInfo['title'], subtitle: _headingInfo['subtitle']),
        LoginForm(),
        Align(child: Text('Forgot password?'), alignment: Alignment.centerRight)
      ],
    );
  }
}
