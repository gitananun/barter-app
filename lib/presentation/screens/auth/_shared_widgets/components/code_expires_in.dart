import 'package:flutter/material.dart';

class CodeExpiresIn extends StatelessWidget {
  const CodeExpiresIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: 'code expires in: ',
        style: _themeData.textTheme.caption,
        children: <TextSpan>[
          TextSpan(text: '03:12', style: TextStyle(color: _themeData.errorColor)),
        ],
      ),
    );
  }
}
