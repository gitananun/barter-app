import 'package:flutter/material.dart';

import 'single_product_details_condition.dart';
import 'single_product_details_likes.dart';

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
