import 'package:flutter/material.dart';

import '../../../../../domain/models/store/product/specifications/category.dart';
import '../../../../shared_widgets/custom_circular_container_with_icon.dart';

class CategoryScaffoldAppBarTitle extends StatelessWidget {
  const CategoryScaffoldAppBarTitle({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircularContainerWithIcon(icon: category.icon!),
        const SizedBox(width: 10),
        Text(category.title, style: Theme.of(context).textTheme.bodyText2),
      ],
    );
  }
}
