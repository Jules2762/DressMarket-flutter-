import 'package:flutter/material.dart';

class Input extends StatelessWidget{
  final String? label;
  final TextEditingController? controller;
  final IconData? iconData;
  const Input({super.key,this.label,this.controller,this.iconData});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder()
      ),
      controller: controller,
    );
  }
}