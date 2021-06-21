import 'package:flutter/material.dart';

import '../../../../../../../domain/models/shared/location.dart';
import '../../../../../../shared_widgets/sheets/draggable/custom_draggable_scrollable_sheet_with_decorated_container.dart';
import 'components/single_product_details_description.dart';
import 'components/single_product_details_location.dart';
import 'components/single_product_details_title_stars_favorite_row.dart';
import 'components/single_product_specific_details_row.dart';

class SingleProductDetailsContainer extends StatelessWidget {
  const SingleProductDetailsContainer({
    Key? key,
    required this.likes,
    required this.title,
    required this.rating,
    required this.location,
    required this.condition,
    required this.description,
  }) : super(key: key);
  final int likes;
  final String title;
  final double rating;
  final String condition;
  final Location location;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomDraggableScrollableSheetWithDecoratedContainer(
      minChildSize: 0.6,
      maxChildSize: 1,
      initialChildSize: 0.6,
      children: [
        SingleProductDetailsTitleStarsFavoriteRow(title: title, rating: rating),
        SingleProductDetailsDescription(description),
        SingleProductDetailsLocation(location),
        SingleProductSpecificDetailsRow(likes: likes, condition: condition),
      ],
    );
  }
}
