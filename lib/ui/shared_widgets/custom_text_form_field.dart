import 'package:barter/ui/shared_widgets/form_components/input_icon_padding.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.validator,
    this.controller,
    this.inputDecoration,
    this.suffixIcon,
    this.prefixIcon,
    this.helperText,
    this.hintText,
    this.width,
    this.height,
    this.maxLength,
    this.suffixOnPressed,
    this.counterText = '',
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.obscureText = false,
    this.isDense = true,
    this.borderRadius = 30,
  }) : super(key: key);
  final bool readOnly;
  final bool isDense;
  final bool obscureText;
  final double? width;
  final double? height;
  final int? maxLength;
  final String? hintText;
  final String? helperText;
  final String counterText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final double borderRadius;
  final TextAlign textAlign;
  final VoidCallback? suffixOnPressed;
  final String Function(String?)? validator;
  final TextEditingController? controller;
  final InputDecoration? inputDecoration;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    final bool _isPrefix = prefixIcon != null;
    final bool _isSuffix = suffixIcon != null;

    return Container(
      width: width,
      height: height,
      child: TextFormField(
        maxLength: maxLength ?? null,
        validator: validator,
        controller: controller,
        readOnly: readOnly,
        obscureText: obscureText,
        textAlign: textAlign,
        decoration: inputDecoration ??
            InputDecoration(
              isDense: true,
              counterText: '',

              ///
              suffixIcon: _isSuffix
                  ? InputIconPadding(
                      child: IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.zero,
                        icon: Icon(suffixIcon),
                        color: _themeData.indicatorColor,
                        onPressed: suffixOnPressed,
                      ),
                    )
                  : null,

              ///
              prefixIcon:
                  _isPrefix ? InputIconPadding(child: Icon(prefixIcon, color: _themeData.indicatorColor)) : null,

              ///
              hintText: hintText,
              hintStyle: _themeData.textTheme.overline,
              helperText: helperText,
              contentPadding: FormStyle.contentPadding,
              border: FormStyle.inputBorder(borderRadius: borderRadius),
              enabledBorder: FormStyle.inputBorder(color: _themeData.accentColor, borderRadius: borderRadius),
            ),
      ),
    );
  }
}
