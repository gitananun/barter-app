import 'package:barter/ui/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardSearchInput extends StatelessWidget {
  const HomeDashboardSearchInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: CustomTextFormField(hintText: 'Search', prefixIcon: FontAwesomeIcons.search, height: 50),
    );
  }
}
