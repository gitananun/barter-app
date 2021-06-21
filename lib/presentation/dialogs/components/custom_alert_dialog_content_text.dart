import 'package:flutter/material.dart';

class CustomAlertDialogContentText extends StatelessWidget {
  const CustomAlertDialogContentText(this.context, this.text, {Key? key}) : super(key: key);
  final String text;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 4,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.overline?.apply(fontWeightDelta: 1),
    );
  }
}
