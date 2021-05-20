import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({Key? key, this.controller, this.onFieldSubmitted, this.onTap}) : super(key: key);
  final void Function()? onTap;
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onTap: onTap,
      hintText: 'Search',
      controller: controller,
      verticalContentPadding: 10,
      onFieldSubmitted: onFieldSubmitted,
      prefixIcon: FontAwesomeIcons.search,
    );
  }
}
