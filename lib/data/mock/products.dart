import 'package:barter/models/shared/location.dart';
import 'package:barter/models/store/product/product.dart';
import 'package:barter/models/store/product/specifications.dart';
import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/models/store/product/specifications/state.dart';

final List<Product> products = [
  Product(
    id: 1,
    rating: 4,
    title: 'iPhone 12',
    images: ['iphone.png'],
    description: 'One of the best Apple Products',
    location: Location(zipCode: 0054, city: 'Yerevan', country: 'Armenia'),
    specificatiions: Specifications(category: Category(title: 'dsa'), condition: Condition(condition: 'New')),
  ),

  ///
  Product(
    id: 1,
    rating: 3,
    title: 'Harry Potter',
    images: ['potter.png'],
    description: 'One of the best books',
    location: Location(country: 'France', zipCode: 0124),
    specificatiions:
        Specifications(category: Category(title: 'books'), condition: Condition(condition: 'used', months: 4)),
  ),

  ///
  Product(
    id: 1,
    rating: 5,
    title: 'Tesla',
    modelName: 'MP500',
    images: ['tesla.png'],
    description: 'One of the best electric cars',
    location: Location(country: 'USA', city: 'NY', zipCode: 22032),
    specificatiions: Specifications(category: Category(title: 'cars'), condition: Condition(condition: 'new')),
  ),

  ///
  Product(
    id: 1,
    rating: 5,
    modelName: '4',
    images: ['ps.png'],
    title: 'Playstation 4',
    description: 'One of the best Game Stations',
    location: Location(country: 'Armenia', city: 'Gyumri', zipCode: 0023),
    specificatiions: Specifications(category: Category(title: 'game'), condition: Condition(condition: 'refurbished')),
  ),
];
