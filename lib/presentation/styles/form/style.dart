import 'package:flutter/material.dart';

class FormStyle {
  static const EdgeInsets contentPadding = EdgeInsets.symmetric(horizontal: 5, vertical: 20);

  static InputBorder inputBorder({double? borderRadius, Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(color: color ?? Colors.black),
      );
}
