import 'package:flutter/material.dart';

class SingleProductDetailsTitle extends StatelessWidget {
  const SingleProductDetailsTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
