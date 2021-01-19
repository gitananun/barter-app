import 'package:barter/ui/shared_widgets/next_circular_button.dart';
import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('welcome'),
          FlutterLogo(),
          Text('indicators'),
          Text('What you have?'),
          Text('description'),
          NextCircularButton(),
        ],
      ),
    );
  }
}
