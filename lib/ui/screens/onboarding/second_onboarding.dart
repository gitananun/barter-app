import 'package:flutter/material.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({Key key}) : super(key: key);

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
            child: Text('>'),
          )
        ],
      ),
    );
  }
}
