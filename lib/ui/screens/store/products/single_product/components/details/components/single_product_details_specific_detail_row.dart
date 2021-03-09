import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsSpecificDetailRow extends StatelessWidget {
  const SingleProductDetailsSpecificDetailRow({Key? key, required this.icon, required this.text}) : super(key: key);
  final Widget icon;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SingleProductStyle.commonHorizontalSpace,
        text,
      ],
    );
  }
}
