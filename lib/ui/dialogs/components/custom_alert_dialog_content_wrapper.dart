import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomAlertDialogContentWrapper extends StatelessWidget {
  const CustomAlertDialogContentWrapper({Key? key, @required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: SharedStyle.spaceBetweenSection,
      children: children ?? [],
    );
  }
}
