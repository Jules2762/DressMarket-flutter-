import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:flutter/material.dart';


class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{
  final List<Widget>? actions;
  final String title;
  const AppBarCustom({super.key,this.actions,this.title="DressMarket"});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColor.primarySurface,
        leading: BackButton(color: Colors.white,),
        title: Text(title,style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: true,
        actions: actions,
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}