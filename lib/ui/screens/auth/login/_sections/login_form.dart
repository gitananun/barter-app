import 'package:barter/ui/screens/auth/_shared_widgets/inputs/custom_email_phone_input.dart';
import 'package:barter/ui/screens/auth/_shared_widgets/inputs/custom_password_input.dart';
import 'package:barter/ui/shared_widgets/containers/custom_wrap_with_runspacing.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    setState(() => _formKey = GlobalKey<FormState>());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: CustomWrapWithRunSpacing(
        children: [
          CustomEmailPhoneInput(),
          CustomPasswordInput(),
        ],
      ),
    );
  }
}
