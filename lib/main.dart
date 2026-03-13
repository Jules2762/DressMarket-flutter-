import 'package:dress_market/cores/states/cart_state.dart';
import 'package:dress_market/cores/states/theme_mode_state.dart';
import 'package:dress_market/cores/theme/app_theme.dart';
import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:dress_market/views/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartState()),
        ChangeNotifierProvider(create: (_) => ThemeModeState()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: ThemeColor.primarySurface,

      title: 'DressMarket',
      // scrollBehavior: ScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.theme,
      themeMode: context.watch<ThemeModeState>().themeMode,
      initialRoute: "/",
      routes: AppRoutes.routes,
    );
  }
}
