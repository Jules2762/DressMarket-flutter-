import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final List<Widget>? children;
  const SectionContainer({
    super.key,
    required this.title,
    required this.onPressed,
    this.children,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: Theme.of(context).textTheme.titleMedium,),
            TextButton(
              onPressed: onPressed,
              child: Text(
                "View all",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 250,
          child: ListView.separated(
            itemCount: children!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return children![index];
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
