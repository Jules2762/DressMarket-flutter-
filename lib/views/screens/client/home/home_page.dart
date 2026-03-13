import 'package:carousel_slider/carousel_slider.dart';
import 'package:dress_market/views/screens/client/home/widgets/carousel_item.dart';
import 'package:dress_market/views/screens/client/home/widgets/section_container.dart';
import 'package:dress_market/views/screens/client/home/widgets/section_item.dart';

import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

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
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
            ],
          ),
          SectionContainer(
            title: "Featured Collections",
            onPressed: () {},
            children: [
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
              SectionItem(collectionName: "collectionName", imagePath: "assets/images/femal_fashion.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
