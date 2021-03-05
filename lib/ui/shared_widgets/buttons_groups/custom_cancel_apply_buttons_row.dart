import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomCancelApplyButtonsRow extends StatelessWidget {
  const CustomCancelApplyButtonsRow({Key? key, this.cancelText = 'Cancel', this.applyText = 'Apply'}) : super(key: key);
  final String cancelText;
  final String applyText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomFlatButton(text: cancelText, primary: false)),
        SharedStyle.buttonsRowMarginBetween,
        Expanded(child: CustomFlatButton(text: applyText)),
      ],
    );
  }
}
