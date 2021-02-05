import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
    this.validator,
    this.controller,
    this.inputDecoration,
    this.suffixIcon,
    this.prefixIcon,
    this.helperText,
    this.hintText,
    this.width,
    this.height,
    this.readOnly = false,
    this.obscureText = false,
    this.isDense = true,
    this.borderRadius = 30,
  }) : super(key: key);
  final String Function(String) validator;
  final TextEditingController controller;
  final bool readOnly;
  final bool obscureText;
  final bool isDense;
  final InputDecoration inputDecoration;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final String hintText;
  final String helperText;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      width: width,
      height: height,
      child: TextFormField(
        validator: validator,
        controller: controller,
        readOnly: readOnly,
        obscureText: obscureText,
        decoration: inputDecoration ??
            InputDecoration(
              isDense: true,
              suffixIcon: Icon(suffixIcon, color: _themeData.indicatorColor),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Icon(prefixIcon, color: _themeData.indicatorColor),
              ),
              hintText: hintText,
              hintStyle: _themeData.textTheme.caption,
              helperText: helperText,
              contentPadding: FormStyle.contentPadding,
              border: FormStyle.inputBorder(borderRadius: borderRadius),
              enabledBorder: FormStyle.inputBorder(color: _themeData.accentColor, borderRadius: borderRadius),
            ),
      ),
    );
  }
}
