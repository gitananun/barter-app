import 'package:barter/ui/shared_widgets/form_components/input_icon_padding.dart';
import 'package:barter/ui/styles/form/style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.width,
    this.height,
    this.onSaved,
    this.hintText,
    this.validator,
    this.maxLength,
    this.helperText,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.isDense = true,
    this.inputDecoration,
    this.suffixOnPressed,
    this.readOnly = false,
    this.counterText = '',
    this.onFieldSubmitted,
    this.withSuffix = true,
    this.borderRadius = 30,
    this.obscureText = false,
    this.verticalContentPadding,
    this.textAlign = TextAlign.start,
  }) : super(key: key);
  final bool readOnly;
  final bool isDense;
  final bool obscureText;
  final double? width;
  final double? height;
  final int? maxLength;
  final bool withSuffix;
  final String? hintText;
  final String? helperText;
  final String counterText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final double borderRadius;
  final TextAlign textAlign;
  final VoidCallback? suffixOnPressed;
  final double? verticalContentPadding;
  final void Function(String?)? onSaved;
  final String Function(String?)? validator;
  final TextEditingController? controller;
  final InputDecoration? inputDecoration;
  final void Function(String)? onFieldSubmitted;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    if (widget.controller != null) {
      _controller = widget.controller!;
    } else {
      _controller = TextEditingController();
    }
    _controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    final bool _isPrefix = widget.prefixIcon != null;
    final bool _isSuffix = widget.suffixIcon != null;

    return Container(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        onSaved: widget.onSaved,
        readOnly: widget.readOnly,
        maxLength: widget.maxLength,
        validator: widget.validator,
        textAlign: widget.textAlign,
        obscureText: widget.obscureText,
        style: _themeData.textTheme.caption,
        onFieldSubmitted: widget.onFieldSubmitted,
        controller: widget.controller ?? _controller,
        decoration: widget.inputDecoration ??
            InputDecoration(
              isDense: true,
              counterText: '',

              ///
              suffixIcon: _isSuffix
                  ? InputIconPadding(
                      child: IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.zero,
                        icon: Icon(widget.suffixIcon),
                        color: _themeData.indicatorColor,
                        onPressed: widget.suffixOnPressed,
                      ),
                    )
                  : widget.withSuffix && _controller.text.isNotEmpty
                      ? InputIconPadding(
                          left: 0,
                          right: 10,
                          child: IconButton(
                            iconSize: 18,
                            splashRadius: 1,
                            onPressed: _controller.clear,
                            icon: const Icon(Icons.backspace_outlined),
                          ),
                        )
                      : null,

              ///
              prefixIcon: _isPrefix
                  ? InputIconPadding(
                      child: Icon(widget.prefixIcon, color: _themeData.indicatorColor),
                    )
                  : null,

              ///
              hintText: widget.hintText,
              helperText: widget.helperText,
              hintStyle: _themeData.textTheme.overline,
              border: FormStyle.inputBorder(borderRadius: widget.borderRadius),
              enabledBorder: FormStyle.inputBorder(color: _themeData.accentColor, borderRadius: widget.borderRadius),
              contentPadding: FormStyle.contentPadding.copyWith(
                top: widget.verticalContentPadding,
                bottom: widget.verticalContentPadding,
              ),
            ),
      ),
    );
  }
}
