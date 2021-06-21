import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared_widgets/custom_text_form_field.dart';

class CustomEmailPhoneInput extends StatelessWidget {
  const CustomEmailPhoneInput({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Email or phone number',
      prefixIcon: FontAwesomeIcons.envelope,
      controller: controller ?? TextEditingController(),
    );
  }
}
