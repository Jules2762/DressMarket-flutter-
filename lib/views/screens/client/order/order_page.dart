import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget{
const OrderPage({super.key});
@override
State<OrderPage> createState()=>_OrderPageState();
}
class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context) {
    return PageContainer(body: Column(
      children: [Text("hello")],
    ));
  }
}