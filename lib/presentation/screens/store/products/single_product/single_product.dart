import 'package:flutter/material.dart';

import '../../../../../domain/models/store/product/product.dart';
import '../../../../../infrastructure/repositories/store/memory_product_repository.dart';
import 'components/details/single_product_details_container.dart';
import 'components/images_carousel/components/single_product_single_image.dart';
import 'components/images_carousel/single_product_images_carousel.dart';
import 'components/layout/single_product_content_layout.dart';
import 'components/layout/single_product_scaffold.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen(this.uuid, {Key? key}) : super(key: key);
  final int uuid;

  @override
  Widget build(BuildContext context) {
    final Product product = MemoryProductRepository().findByUuid(uuid);

    return SingleProductScaffold(
      body: SingleProductContentLayout(
        ///
        section1: product.images!.length != 1
            ? SingleProductImagesCarousel(product.images)
            : SingleProductSingleImage(product.images![0]),

        ///
        section2: SingleProductDetailsContainer(
          likes: product.likes,
          title: product.title,
          rating: product.rating,
          location: product.location,
          description: product.description,
          condition: product.specifications.condition.condition,
        ),
      ),
    );
  }
}
