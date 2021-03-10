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
    images: ['iphone.png', 'iphone1.png', 'iphone2.png'],
    description:
        'One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOSOne of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOSOne of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS One of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOSOne of the best Apple Products. Apple IPhone 12 Pro is one of the costly phones in the world which has the powerful OS names as IOS',
    location: Location(zipCode: 0054, city: 'Yerevan', country: 'Armenia'),
    specifications: Specifications(category: Category(title: 'phones'), condition: Condition(condition: 'New')),
  ),

  ///
  Product(
    id: 1,
    rating: 3,
    title: 'Harry Potter',
    images: ['potter.png'],
    description: 'One of the best books',
    location: Location(country: 'France', zipCode: 0124),
    specifications:
        Specifications(category: Category(title: 'books'), condition: Condition(condition: 'used', months: 4)),
  ),

  ///
  Product(
    id: 1,
    rating: 1,
    likes: 900,
    title: 'Tesla',
    modelName: 'MP500',
    images: ['tesla.png', 'tesla_1.png', 'tesla_2.png', 'tesla_3.png'],
    description: 'One of the best electric cars',
    location: Location(country: 'USA', city: 'NY', zipCode: 22032),
    specifications: Specifications(category: Category(title: 'cars'), condition: Condition(condition: 'new')),
  ),

  ///
  Product(
    id: 1,
    rating: 5,
    likes: 935,
    modelName: '4',
    images: ['ps.png', 'ps5.png', 'ps5_1.png', 'ps5_2.png'],
    title: 'Playstation 4',
    description: 'One of the best Game Stations',
    location: Location(country: 'Armenia', city: 'Gyumri', zipCode: 0023),
    specifications: Specifications(category: Category(title: 'game'), condition: Condition(condition: 'refurbished')),
  ),
];
