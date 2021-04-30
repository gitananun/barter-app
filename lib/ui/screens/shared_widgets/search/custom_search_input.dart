import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({Key? key, this.controller, this.onFieldSubmitted}) : super(key: key);
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Search',
      controller: controller,
      verticalContentPadding: 10,
      onFieldSubmitted: onFieldSubmitted,
      prefixIcon: FontAwesomeIcons.search,
    );
  }
}
