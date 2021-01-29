import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/shared_widgets/list_view_with_column.dart';
import 'package:flutter/material.dart';

class LoginButtonsList extends StatelessWidget {
  const LoginButtonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return ListViewWithColumn(
      children: <Widget>[
        CustomFlatButton(primary: true, text: 'Login', minWidth: double.infinity),
        Text('Or continue with'),
        CustomFlatButton(text: 'Facebook', minWidth: double.infinity, color: Colors.blue),
        CustomFlatButton(text: 'Google', minWidth: double.infinity, color: Colors.red),
        RichText(
          text: TextSpan(
            text: 'Don\'t have account yet? ',
            style: _themeData.textTheme.headline6,
            children: <TextSpan>[TextSpan(text: 'Sign Up', style: TextStyle(color: _themeData.primaryColor))],
          ),
        )
      ],
    );
  }
}
