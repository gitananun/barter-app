import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email or phone number',
            prefixIcon: FontAwesomeIcons.envelope,
          ),
          FormStyle.spacingBtwInputs,
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
