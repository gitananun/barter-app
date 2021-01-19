import 'package:flutter/material.dart';

class NextCircularButton extends StatelessWidget {
  const NextCircularButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.blue, // button color
        child: InkWell(
          splashColor: Colors.red, // inkwell color
          child: SizedBox(width: 56, height: 56, child: Icon(Icons.menu)),
          onTap: () {},
        ),
      ),
    );
  }
}
