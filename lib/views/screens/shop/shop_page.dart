import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});
  @override
  State<ShopPage> createState()=>_ShopPageState();
}
class _ShopPageState extends State<ShopPage>{
  @override
  Widget build(BuildContext context) {
    return PageContainer(body: Column(
      children: [
        Text("page")
      ],
    ));
  }
}