import 'package:dress_market/views/layouts/admin_main_layout.dart';
import 'package:dress_market/views/layouts/main_layout.dart';
import 'package:dress_market/views/screens/client/profile/profile_page.dart';
import 'package:dress_market/views/screens/client/settings/setting_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String setting='/setting';
  static const String productDetails = '/product-details';
  static const String adminHome='/admin';
  static Map<String, WidgetBuilder> routes = {
    // auth page
    //client page
    home: (context) => MainLayout(),
    profile: (context) => ProfilePage(),
    setting:(context)=>SettingPage(),

    //admin page
    adminHome:(context)=>AdminMainLayout()
  };
}
