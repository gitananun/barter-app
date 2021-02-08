import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordResetForm extends StatelessWidget {
  const PasswordResetForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'mypasswordisherewithdashes',
      prefixIcon: FontAwesomeIcons.lock,
    );
  }
}
