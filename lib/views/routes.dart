import 'package:dress_market/views/layouts/main_layout.dart';
import 'package:dress_market/views/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String productDetails = '/product-details';
  static Map<String, WidgetBuilder> routes = {
    home: (context) => MainLayout(),
    profile: (context) => ProfilePage(),
    // productDetails: (context) => ProductDetailsPage(),
  };
}
