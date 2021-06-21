import '../../../domain/data/mock/products.dart';
import '../../../domain/models/store/product/product.dart';
import 'product_repository_interface.dart';

class MemoryProductRepository implements ProductRepositoryInterface {
  MemoryProductRepository() {
    _products = MockProducts;
  }

  late List<Product> _products;

  @override
  Product findByUuid(int id) {
    return _products.firstWhere((el) => el.id == id);
  }
}
