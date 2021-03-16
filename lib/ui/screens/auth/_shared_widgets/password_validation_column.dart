import 'package:barter/ui/screens/auth/_shared_widgets/components/custom_validation_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordValidationColumn extends StatelessWidget {
  const PasswordValidationColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        const Text('Your password must contain'),
        Wrap(
          runSpacing: 3,
          children: const [
            CustomValidationListTile(
              title: 'At least 6 characters',
              leadingIcon: FontAwesomeIcons.check,
              active: true,
            ),
            CustomValidationListTile(
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
