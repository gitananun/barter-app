import 'package:flutter/material.dart';

class SingleProductDetailsSpecificDetailText extends StatelessWidget {
  const SingleProductDetailsSpecificDetailText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) => Text(text, style: Theme.of(context).textTheme.caption);
}
