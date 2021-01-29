import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      child: Wrap(
        runSpacing: FormStyle.spacingBtwInputs,
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
