import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
const CartPage({super.key});
@override
State<CartPage> createState()=>_CartPageState();
}
class _CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    return PageContainer(body: Column(
      children: [Text("hello")],
    ));
  }
}