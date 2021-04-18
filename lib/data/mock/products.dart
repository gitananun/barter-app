import 'package:barter/domain/models/shared/location.dart';
import 'package:barter/domain/models/store/product/product.dart';
import 'package:barter/domain/models/store/product/specifications.dart';
import 'package:barter/domain/models/store/product/specifications/category.dart';
import 'package:barter/domain/models/store/product/specifications/state.dart';

final List<Product> products = [
  Product(
    id: 1,
    rating: 4,
    title: 'iPhone 12',
    images: ['iphone.png', 'iphone1.png', 'iphone2.png'],
    description:
        '''A14 Bionic rockets past every other smartphone chip. The Pro camera system takes low-light photography to the next level — with an even bigger jump on iPhone 12 Pro Max. And Ceramic Shield delivers four times better drop performance. Let’s see what this thing can do.''',
    location: Location(zipCode: 0054, city: 'Yerevan', country: 'Armenia'),
    specifications: Specifications(category: Category(title: 'phones'), condition: Condition(condition: 'New')),
  ),

  ///
  Product(
    id: 2,
    rating: 3,
    title: 'Harry Potter',
    images: ['potter.png'],
    description:
        '''Harry Potter is a series of seven fantasy novels written by British author, J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).''',
    location: Location(country: 'France', zipCode: 0124),
    specifications:
        Specifications(category: Category(title: 'books'), condition: Condition(condition: 'used', months: 4)),
  ),

  ///
  Product(
    id: 3,
    rating: 1,
    likes: 900,
    title: 'Tesla',
    modelName: 'MP500',
    images: ['tesla.png', 'tesla_1.png', 'tesla_2.png', 'tesla_3.png'],
    description:
        '''Tesla, Inc. is an American electric vehicle and clean energy company based in Palo Alto, California. Tesla's current products include electric cars, battery energy storage from home to grid scale, solar panels and solar roof tiles, as well as other related products and services.''',
    location: Location(country: 'USA', city: 'NY', zipCode: 22032),
    specifications: Specifications(category: Category(title: 'cars'), condition: Condition(condition: 'new')),
  ),

  ///
  Product(
    id: 4,
    rating: 5,
    likes: 935,
    modelName: '4',
    images: ['ps.png', 'ps5.png', 'ps5_1.png', 'ps5_2.png'],
    title: 'Playstation 4',
    description:
        '''Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback, adaptive triggers and 3D Audio*, and an all-new generation of incredible PlayStation® games.''',
    location: Location(country: 'Armenia', city: 'Gyumri', zipCode: 0023),
    specifications: Specifications(category: Category(title: 'game'), condition: Condition(condition: 'refurbished')),
  ),
];
