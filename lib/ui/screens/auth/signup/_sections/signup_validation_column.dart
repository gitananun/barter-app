import 'package:barter/ui/screens/auth/signup/_shared_widgets/signup_validation_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupValidationColumn extends StatelessWidget {
  const SignupValidationColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        Text('Your password must contain'),
        Wrap(
          runSpacing: 3,
          children: [
            SignupValidationListTile(
              title: 'At least 6 characters',
              leadingIcon: FontAwesomeIcons.check,
              active: true,
            ),
            SignupValidationListTile(
              title: 'Contains a number',
              leadingIcon: FontAwesomeIcons.check,
              active: false,
            ),
          ],
        )
      ],
    );
  }
}
