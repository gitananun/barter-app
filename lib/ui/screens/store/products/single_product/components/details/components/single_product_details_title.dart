import 'package:flutter/material.dart';

class SingleProductDetailsTitle extends StatelessWidget {
  const SingleProductDetailsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Galaxy Note 20 Ultra',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
