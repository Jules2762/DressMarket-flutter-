import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  final String collectionName;
  final String imagePath;
  const SectionItem({
    super.key,
    required this.collectionName,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
        ),
         SizedBox(height: 5,),
        Text(collectionName),
      ],
    );
  }
}
