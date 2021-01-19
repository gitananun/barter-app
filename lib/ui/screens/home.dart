import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: FlatButton(
          onPressed: () => Navigator.pushNamed(context, '/hi'),
          child: Text(
            'navigate',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )),
      ),
    );
  }
}
