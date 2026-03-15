import 'package:dress_market/cores/datas/products.dart';
import 'package:dress_market/cores/models/product.dart';
import 'package:dress_market/views/widgets/forms/input.dart';
import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      body: Column(
        children: [
          //search section
          Input(iconData: Icons.search),
          //filter section
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,

              // physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 7,
                  children: [
                    SizedBox(
                      // width: double.minPositive,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 5,
                          children: [Icon(Icons.tune), Text("Filter")],
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: double.minPositive,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 5,
                          children: [
                            Text("Categorie"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: double.minPositive,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.filter_alt),
                            Text("Sort by : Pricing"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //product list section
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: Products.productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            itemBuilder: (context, index) {
              Product productItem=Products.productList[index];
              return Container(
                child: Column(
                  children: [
                    Image.asset(productItem.image??"",fit: BoxFit.cover,),
                    Text(productItem.name),
                    Text('${productItem.price} Ar' ),
                  ],
                ),
              );
            },
          ),
        
         ],
      ),
    );
  }
}
