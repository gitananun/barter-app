import 'package:flutter/material.dart';

class FormStyle {
  static const EdgeInsets contentPadding = const EdgeInsets.symmetric(horizontal: 5, vertical: 20);

  static InputBorder inputBorder({double? borderRadius, Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(width: 1, color: color ?? Colors.black),
      );
}
