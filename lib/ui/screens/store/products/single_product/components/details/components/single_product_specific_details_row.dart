import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_condition.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_likes.dart';
import 'package:flutter/material.dart';

class SingleProductSpecificDetailsRow extends StatelessWidget {
  const SingleProductSpecificDetailsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: SingleProductDetailsCondition()),
        Expanded(child: SinlgeProductDetailsLikes()),
      ],
    );
  }
}