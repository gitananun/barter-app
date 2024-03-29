import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../shared_widgets/inputs/custom_email_phone_input.dart';
import '../../shared_widgets/inputs/custom_password_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: const CustomWrapWithRunSpacing(
        children: [
          CustomEmailPhoneInput(),
          CustomPasswordInput(),
        ],
      ),
    );
  }
}
