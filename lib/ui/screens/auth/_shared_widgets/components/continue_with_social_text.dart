import 'package:flutter/material.dart';

class ContinueWithSocialText extends StatelessWidget {
  const ContinueWithSocialText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        'Or continue with',
        style: Theme.of(context).textTheme.overline,
      );
}
