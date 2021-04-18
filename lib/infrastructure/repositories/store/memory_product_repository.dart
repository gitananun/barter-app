import 'package:barter/data/mock/products.dart';
import 'package:barter/infrastructure/repositories/store/product_repository_interface.dart';
import 'package:barter/domain/models/store/product/product.dart';

class MemoryProductRepository implements ProductRepositoryInterface {
  MemoryProductRepository() {
    _products = products;
  }

  late List<Product> _products;

  @override
  Product findByUuid(int id) {
    return _products.firstWhere((el) => el.id == id);
  }
}
