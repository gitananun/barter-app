import 'package:flutter/material.dart';

class DialogUtils {
  static show(BuildContext context, Widget dialog) {
    showDialog(context: context, builder: (_) => dialog);
  }
}
