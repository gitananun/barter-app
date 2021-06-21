import 'package:flutter/material.dart';

import '../../styles/types/double/double_style.dart';

class CustomAlertDialogContentWrapper extends StatelessWidget {
  const CustomAlertDialogContentWrapper({Key? key, required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: DoubleStyle.spaceBetweenSection,
      alignment: WrapAlignment.center,
      children: children ?? [],
    );
  }
}
