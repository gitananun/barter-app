import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_condition.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_likes.dart';
import 'package:flutter/material.dart';

class SingleProductSpecificDetailsRow extends StatelessWidget {
  const SingleProductSpecificDetailsRow({
    Key? key,
    required this.likes,
    required this.condition,
  }) : super(key: key);
  final int likes;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SingleProductDetailsCondition(condition)),
        Expanded(child: SinlgeProductDetailsLikes(likes)),
      ],
    );
  }
}
