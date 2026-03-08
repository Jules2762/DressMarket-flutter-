import 'package:flutter/material.dart';

class Input extends StatelessWidget{
  final String? label;
  final TextEditingController? controller;
  const Input({super.key,this.label,this.controller});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        
      ),
      controller: controller,
    );
  }
}