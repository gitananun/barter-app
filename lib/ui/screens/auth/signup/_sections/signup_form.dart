import 'package:barter/ui/shared_widgets/containers/custom_wrap_with_runspacing.dart';
import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupForm extends StatefulWidget {
  SignupForm({Key key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
          CustomTextFormField(
            hintText: 'Email or phone number',
            prefixIcon: FontAwesomeIcons.envelope,
          ),
          CustomTextFormField(
            hintText: 'Password',
            prefixIcon: FontAwesomeIcons.lock,
            suffixIcon: FontAwesomeIcons.eye,
          ),
        ],
      ),
    );
  }
}
