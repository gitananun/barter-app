import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPasswordInput extends StatefulWidget {
  CustomPasswordInput({Key key, this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  _CustomPasswordInputState createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Password',
      controller: widget.controller,
      obscureText: _obscurePassword,
      prefixIcon: FontAwesomeIcons.lock,
      suffixIcon: _obscurePassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
      suffixOnPressed: () => setState(() => _obscurePassword = !_obscurePassword),
    );
  }
}
