
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselItem extends StatelessWidget {
  final String path;
  final String? title;
  final String? caption;
  final Widget? button;
  final String? status;
  const CarouselItem({
    super.key,
    required this.path,
    this.title,
    this.caption,
    this.status,
    this.button,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
         ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child:  Image.asset(path, width: double.infinity, fit: BoxFit.cover,),
         ),
          Container(
            decoration: BoxDecoration(
             borderRadius: BorderRadiusGeometry.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                   Colors.transparent,
                  Colors.black.withValues(alpha: 0.6),
                 
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(status!,style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).primaryColor,
                  
                ),),
                Text(
                  title!,
                  style: GoogleFonts.playfairDisplay(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              SizedBox(
                width: 400,
                child:   Text(caption!,maxLines: 2,style: GoogleFonts.playfairDisplay(
                  
                  color: Colors.white60
                ),),
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
