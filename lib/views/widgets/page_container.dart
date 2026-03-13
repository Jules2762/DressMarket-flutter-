import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget{
  final Widget body;
  const PageContainer({super.key,required this.body});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15
      ),
    
      child: 
    ListView(
      scrollDirection: Axis.vertical,
      children: [
        body
      ],
    )
    ,);
  }
}