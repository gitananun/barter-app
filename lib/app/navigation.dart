import 'package:barter/ui/screens/home/home_dashboard/home_dashboard.dart';
import 'package:barter/ui/screens/search/layout/search_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const navigationScreens = [
  HomeDashboardScreen(key: PageStorageKey('home')),
  SearchScaffold(key: PageStorageKey('search')),
];

const navigationBarItems = [
  {'icon': FontAwesomeIcons.home, 'label': 'Home'},
  {'icon': FontAwesomeIcons.boxes, 'label': 'Products'},
  {'icon': FontAwesomeIcons.solidHeart, 'label': 'Favorites'},
  {'icon': FontAwesomeIcons.comments, 'label': 'Chat'},
  {'icon': FontAwesomeIcons.solidUser, 'label': 'Profile'},
];
