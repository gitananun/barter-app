import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class LoginButtonsList extends StatelessWidget {
  const LoginButtonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomFlatButton(primary: true, text: 'Login', minWidth: double.infinity),
              Text('Or continue with'),
              CustomFlatButton(text: 'Facebook', minWidth: double.infinity, color: Colors.blue),
              CustomFlatButton(text: 'Google', minWidth: double.infinity, color: Colors.red),
              Text('Don\'t have any account? Sign Up')
            ],
          ),
        ),
      ),
    );
  }
}
