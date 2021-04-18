import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      hintText: 'Search',
      verticalContentPadding: 10,
      prefixIcon: FontAwesomeIcons.search,
    );
  }
}
