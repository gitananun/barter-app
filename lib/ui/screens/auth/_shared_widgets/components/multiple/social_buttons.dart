import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_social_flat_button.dart';

class SocialButtonsList {
  static List<Widget> getButtonsIterable(BuildContext context) => <Widget>[
        CustomSocialFlatButton(
          text: 'Facebook',
          color: Colors.blue,
          minWidth: double.infinity,
          icon: FontAwesomeIcons.facebookF,
          onPressed: () => Navigator.pushReplacementNamed(context, '/auth_verify_with_code'),
        ),
        const CustomSocialFlatButton(
          text: 'Google',
          color: Colors.red,
          minWidth: double.infinity,
          icon: FontAwesomeIcons.google,
        ),
      ];
}
