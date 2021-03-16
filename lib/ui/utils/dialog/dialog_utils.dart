import 'package:flutter/material.dart';

class DialogUtils {
  static void show(BuildContext context, Widget dialog) => showDialog<Widget>(context: context, builder: (_) => dialog);
}
