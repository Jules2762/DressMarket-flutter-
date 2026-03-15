import 'package:carousel_slider/carousel_slider.dart';
import 'package:dress_market/views/screens/client/home/widgets/carousel_item.dart';
import 'package:dress_market/views/screens/client/home/widgets/section_container.dart';
import 'package:dress_market/views/screens/client/home/widgets/section_item.dart';

import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CarouselItem> carousels = [
    CarouselItem(
      path: "assets/images/catalog.jpg",
      title: "The art of Autumn Elegance",
      caption:
          "Discover our curated selection of boutique pieces designed for the  moderne connoisseur",
      status: "New arrival of 2026",
    ),
    CarouselItem(
      path: "assets/images/family.jpg",
      title: "The art of Autumn Elegance",
      caption:
          "Discover our curated selection of boutique pieces designed for the  moderne connoisseur",
      status: "New arrival of 2026",
    ),
    CarouselItem(
      path: "assets/images/femal_fashion.jpg",
      title: "The art of Autumn Elegance",
      caption:
          "Discover our curated selection of boutique pieces designed for the  moderne connoisseur",
      status: "New arrival of 2026",
    ),
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.wait(
        carousels.map((c) => precacheImage(AssetImage(c.path), context)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      body: Column(
        spacing: 15,
        children: [
          CarouselSlider(
            // carouselController: CarouselSliderController(),
            items: carousels.map((c) => c).toList(),
            options: CarouselOptions(
              height: 230,
              // aspectRatio: 0,*
              viewportFraction: 1,
              autoPlay: true,

              enlargeCenterPage: true,
            ),
          ),

          SectionContainer(
            title: "Featured Collections",
            onPressed: () {},
            children: [
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
            ],
          ),
          SectionContainer(
            title: "Editor's choice",
            onPressed: () {},
            children: [
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
              SectionItem(
                collectionName: "collectionName",
                imagePath: "assets/images/femal_fashion.jpg",
              ),
            ],
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withValues(alpha: 0.2),
              border: BoxBorder.all(
                color: Theme.of(context).primaryColor.withValues(alpha: 0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The DressMarket journal",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text("Insider access to luxury trends and private sales."),
                SizedBox(
                  width: 350,
                  child: CupertinoTextField(
                    placeholder: "Your email address",
                    prefix: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Icon(
                        Icons.email,
                        color: Theme.of(
                          context,
                        ).primaryColor.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SUSCRIBE",
                    style: GoogleFonts.playfairDisplay(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
