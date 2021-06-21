import 'package:flutter/material.dart';

import '../../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../../_shared_widgets/inputs/custom_email_phone_input.dart';
import '../../_shared_widgets/inputs/custom_password_input.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
