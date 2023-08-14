// ignore_for_file: cast_from_null_always_fails

import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/Details/DetailsScreen.dart';
import 'package:shop_app/screens/Home/homeScreen.dart';

final route = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(product: null as Product),
};
