import 'package:barter/ui/screens/auth/_shared_widgets/components/custom_social_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtonsList {
  static List getButtonsIterable(BuildContext context) => [
        CustomSocialFlatButton(
          text: 'Facebook',
          color: Colors.blue,
          minWidth: double.infinity,
          icon: FontAwesomeIcons.facebookF,
          onPressed: () => Navigator.pushNamed(context, '/auth_verify_with_code'),
        ),
        CustomSocialFlatButton(
          text: 'Google',
          color: Colors.red,
          minWidth: double.infinity,
          icon: FontAwesomeIcons.google,
        ),
      ];
}
