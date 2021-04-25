import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class VerifyWithCodeForm extends StatelessWidget {
  const VerifyWithCodeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _inputWidth = _screenWidth / 6;
    return Wrap(
      spacing: 10,
      children: [
        for (int i = 0; i < 4; i++)
          CustomTextFormField(
            maxLength: 1,
            borderRadius: 15,
            withSuffix: false,
            width: _inputWidth,
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
