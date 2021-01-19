import 'package:flutter/material.dart';

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('navigation'),
          FlutterLogo(),
          Text('indicators'),
          Text('What you have?'),
          Text('description'),
          FlatButton(
            onPressed: () {},
            color: Colors.red,
            child: Text('get started'),
          )
        ],
      ),
    );
  }
}
