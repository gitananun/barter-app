import 'package:flutter/material.dart';

class SingleProductAppBarTitle extends StatelessWidget {
  const SingleProductAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Product Details',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
