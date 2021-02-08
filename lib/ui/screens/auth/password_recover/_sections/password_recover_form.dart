import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordRecoverForm extends StatelessWidget {
  const PasswordRecoverForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'barterarmenia@gmail.com',
      prefixIcon: FontAwesomeIcons.envelope,
    );
  }
}
